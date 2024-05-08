import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:t2mobile/providers/account.dart';
import 'package:t2mobile/providers/auth/portal_cookie.dart';
import 'package:t2mobile/utilities/exec.dart';
import 'package:t2mobile/views/components/account_form.dart';

class LoginView extends ConsumerWidget {
  final void Function() onLogin;

  const LoginView({super.key, required this.onLogin});

  @override
  Widget build(BuildContext context, WidgetRef ref) => AccountFormBuilder(
        model: AccountModel.empty(),
        builder: (context, formModel, _) => Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar.medium(
                title: Text(AppLocalizations.of(context)!.login),
              ),
              SliverPadding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                sliver: SliverToBoxAdapter(
                  child: AccountFormView(
                    formModel: formModel,
                    matrixLabelTextStyle:
                        Theme.of(context).textTheme.titleLarge,
                    onSubmitted: (data) =>
                        exec(context, () => login(ref, data)),
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            child: ReactiveAccountFormConsumer(
              builder: (context, formModel, _) => GestureDetector(
                onTap: () => formModel.form.markAllAsTouched(),
                child: FilledButton(
                  onPressed: formModel.form.valid
                      ? () => exec(
                            context,
                            () => login(ref, formModel.model.toData()),
                          )
                      : null,
                  style: FilledButton.styleFrom(
                    textStyle: Theme.of(context).textTheme.titleMedium,
                  ),
                  child: Text(AppLocalizations.of(context)!.login),
                ),
              ),
            ),
          ),
        ),
      );

  Future<void> login(WidgetRef ref, AccountData account) async {
    final cookie = await account.authenticatePortal();
    ref.read(portalCookieProvider.notifier).set(cookie);
    await ref.read(accountProvider.notifier).update(account);
    onLogin();
  }
}
