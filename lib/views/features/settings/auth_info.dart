import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:t2mobile/providers/auth/moodle_cookie.dart';
import 'package:t2mobile/providers/auth/moodle_token.dart';
import 'package:t2mobile/providers/auth/portal_cookie.dart';
import 'package:t2mobile/utilities/exec.dart';
import 'package:t2mobile/views/components/list_item.dart';

class AuthInfoPage extends HookConsumerWidget {
  const AuthInfoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final portalCookieController = useTextEditingController(
      text: ref.read(portalCookieProvider).valueOrNull,
    );
    final moodleCookieController = useTextEditingController(
      text: ref.read(moodleCookieProvider).valueOrNull,
    );
    final moodleTokenController = useTextEditingController(
      text: ref.read(moodleTokenProvider).valueOrNull,
    );

    ref.listen(portalCookieProvider, (previous, next) {
      final cookie = next.valueOrNull;
      if (cookie != null) portalCookieController.text = cookie;
    });
    ref.listen(moodleCookieProvider, (previous, next) {
      final cookie = next.valueOrNull;
      if (cookie != null) moodleCookieController.text = cookie;
    });
    ref.listen(moodleTokenProvider, (previous, next) {
      final token = next.valueOrNull;
      if (token != null) moodleTokenController.text = token;
    });

    return ScaffoldMessenger(
      child: Scaffold(
        body: CustomScrollView(slivers: [
          SliverAppBar.medium(
            title: Text(AppLocalizations.of(context)!.authenticationInfo),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            sliver: SliverList.list(children: [
              _buildTextField(
                controller: portalCookieController,
                labelText: 'Portal Cookie',
              ),
              const SizedBox(height: 16),
              _buildTextField(
                controller: moodleCookieController,
                labelText: 'Moodle Cookie',
              ),
              const SizedBox(height: 16),
              _buildTextField(
                controller: moodleTokenController,
                labelText: 'Moodle Token',
              ),
            ]),
          ),
        ]),
        bottomNavigationBar: BottomAppBar(
          child: FilledButton(
            onPressed: () => exec(
              context,
              () async {
                ref
                    .read(portalCookieProvider.notifier)
                    .set(portalCookieController.text);
                ref
                    .read(moodleCookieProvider.notifier)
                    .set(moodleCookieController.text);
                await ref
                    .read(moodleTokenProvider.notifier)
                    .save(moodleTokenController.text);
              },
              showLoading: false,
              onSuccess: ExecDefaults.snackBarOnSuccess(
                message: (_) => AppLocalizations.of(context)!.savedSuccessfully,
                showCloseIcon: true,
              ),
            ),
            child: Text(AppLocalizations.of(context)!.save),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
  }) =>
      ListItem(
        child: TextField(
          controller: controller,
          decoration: InputDecoration(labelText: labelText),
          autocorrect: false,
          enableSuggestions: false,
          maxLines: null,
          keyboardType: TextInputType.text,
          onTap: () => controller.selection = TextSelection(
            baseOffset: 0,
            extentOffset: controller.text.length,
          ),
          onTapOutside: (_) => primaryFocus?.unfocus(),
        ),
      );
}
