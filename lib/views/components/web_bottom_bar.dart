import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:share_plus/share_plus.dart';
import 'package:t2mobile/providers/web_view_state.dart';

enum T2Url {
  resourceMenu('https://portal.nap.gsic.titech.ac.jp/GetAccess/ResourceList'),
  kyomu('https://kyomu0.gakumu.titech.ac.jp/Titech/Default.aspx'),
  moodle('https://t2schola.titech.ac.jp/auth/eltitech/autologin.php'),
  mail('https://mailv4.m.titech.ac.jp/cgi-bin/loginweb');

  final String value;
  const T2Url(this.value);

  String toText(BuildContext context) => switch (this) {
        T2Url.resourceMenu => AppLocalizations.of(context)!.resourceMenu,
        T2Url.kyomu =>
          AppLocalizations.of(context)!.webSystemForStudentsAndFaculty,
        T2Url.moodle => AppLocalizations.of(context)!.t2schola,
        T2Url.mail => AppLocalizations.of(context)!.tokyoTechMail,
      };
}

class WebBottomBar extends ConsumerWidget {
  const WebBottomBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Material(
        surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
        elevation: 3,
        child: Row(children: [
          buildButton(
            icon: Platform.isIOS || Platform.isMacOS
                ? Symbols.arrow_back_ios_new
                : Symbols.arrow_back,
            onPressed: () => ref.read(webViewStateProvider.notifier).goBack(),
          ),
          buildButton(
            icon: Platform.isIOS || Platform.isMacOS
                ? Symbols.arrow_forward_ios
                : Symbols.arrow_forward,
            onPressed: () =>
                ref.read(webViewStateProvider.notifier).goForward(),
          ),
          buildButton(
            icon: Symbols.refresh,
            onPressed: () => ref.read(webViewStateProvider.notifier).reload(),
          ),
          buildButton(
            icon: Symbols.bookmark,
            onPressed: () async {
              final url = await showModalBottomSheet<T2Url>(
                showDragHandle: true,
                useSafeArea: true,
                context: context,
                builder: (context) => SingleChildScrollView(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.viewPaddingOf(context).bottom,
                  ),
                  child: Column(
                    children: T2Url.values
                        .map((url) => ListTile(
                              dense: true,
                              title: Text(url.toText(context)),
                              subtitle: Text(url.value),
                              onTap: () => Navigator.of(context).pop(url),
                            ))
                        .toList(),
                  ),
                ),
              );

              if (url != null) {
                unawaited(
                    ref.read(webViewStateProvider.notifier).load(url.value));
              }
            },
          ),
          buildButton(
            icon: Platform.isIOS || Platform.isMacOS
                ? Symbols.ios_share
                : Symbols.share,
            onPressed: () async {
              final url =
                  await ref.read(webViewStateProvider.notifier).getUrl();
              if (url != null) {
                if (Platform.isIOS || Platform.isAndroid) {
                  await Share.shareUri(url.uriValue);
                }
              }
            },
          ),
        ]),
      );

  Widget buildButton({
    required IconData icon,
    required void Function() onPressed,
  }) =>
      Expanded(
        child: Center(
          child: IconButton(
            visualDensity: VisualDensity.compact,
            icon: Icon(icon, size: 20),
            onPressed: onPressed,
          ),
        ),
      );
}
