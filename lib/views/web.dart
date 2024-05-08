import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:t2mobile/providers/auth/portal_cookie.dart';
import 'package:t2mobile/providers/navigation_state.dart';
import 'package:t2mobile/providers/web_view_state.dart';

class WebView extends HookConsumerWidget {
  final String initialUrl;

  const WebView({
    super.key,
    required this.initialUrl,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() => () => ref.invalidate(webViewStateProvider), []);

    final snackBarController =
        useRef<ScaffoldFeatureController<SnackBar, SnackBarClosedReason>?>(
            null);
    ref.listen(portalCookieProvider, (previous, next) {
      if (previous == null || previous.isLoading == next.isLoading) return;
      if (next.isLoading) {
        snackBarController.value = ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.loggingIn),
            duration: const Duration(days: 1),
          ),
        );
      } else {
        snackBarController.value?.close();
      }
    });

    final progress = useState<double?>(null);

    final inAppWebView = useRef(InAppWebView(
      onWebViewCreated: (controller) {
        controller.loadUrl(
          urlRequest: URLRequest(
            url: ref.read(webViewStateProvider.select((v) => v.url)) ??
                WebUri(initialUrl),
          ),
        );
        ref.read(webViewStateProvider.notifier).setController(controller);
      },
      onCreateWindow: (controller, createWindowAction) {
        ref
            .read(webViewStateProvider.notifier)
            .loadRequest(createWindowAction.request);
        return Future.value(true);
      },
      onUpdateVisitedHistory: (controller, url, isReload) {
        ref.read(webViewStateProvider.notifier).updateUrl(url);
      },
      onLoadStart: (controller, url) {
        progress.value = 0;
      },
      onProgressChanged: (controller, prog) {
        progress.value = prog / 100;
      },
      onReceivedError: (controller, request, error) {
        progress.value = null;
      },
      onReceivedHttpError: (controller, request, errorResponse) {
        progress.value = null;
      },
      onLoadStop: (controller, url) async {
        progress.value = null;
        if (url == null) return;
        final host = url.host.toLowerCase();
        if (host != 'portal.titech.ac.jp' &&
            host != 'portal.nap.gsic.titech.ac.jp') return;
        final title = await controller.getTitle();
        if (title != '東工大ポータル' && title != 'Tokyo Tech Portal') return;
        await ref.read(portalCookieProvider.notifier).login();
        await controller.loadUrl(
          urlRequest: URLRequest(
            url: WebUri(
              url.queryParameters['URI'] ??
                  url.queryParameters['GAURI'] ??
                  'https://portal.nap.gsic.titech.ac.jp/GetAccess/ResourceList',
            ),
          ),
        );
      },
    ));

    return Scaffold(
      body: Column(children: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            ref.read(webViewStateProvider.notifier).scrollToTop();
            ref.read(navigationStateProvider.notifier).showBar();
          },
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Material(
                surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
                shadowColor: Colors.transparent,
                elevation: 3,
                borderOnForeground: false,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.viewPaddingOf(context).top + 8,
                    bottom: 8,
                  ),
                  child: Consumer(builder: (context, ref, _) {
                    final url =
                        ref.watch(webViewStateProvider.select((v) => v.url));
                    final appBarForeground =
                        Theme.of(context).appBarTheme.foregroundColor;

                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 16),
                        if (url?.scheme == 'https') ...[
                          Icon(
                            Symbols.lock,
                            size: 12,
                            fill: 1,
                            color: appBarForeground,
                          ),
                          const SizedBox(width: 4),
                        ],
                        Text(
                          url?.host ?? '',
                          maxLines: 1,
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(color: appBarForeground),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(width: 16),
                      ],
                    );
                  }),
                ),
              ),
              if (progress.value != null)
                LinearProgressIndicator(value: progress.value),
            ],
          ),
        ),
        Expanded(
          child: Listener(
            onPointerMove: (event) {
              if (event.delta.dy > 0) {
                ref.read(navigationStateProvider.notifier).showBar();
              } else if (event.delta.dy < 0) {
                ref.read(navigationStateProvider.notifier).hideBar();
              }
            },
            child: inAppWebView.value,
          ),
        ),
      ]),
    );
  }
}
