import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:t2mobile/providers/account.dart';
import 'package:t2mobile/utilities/exceptions/clipboard_empty.dart';
import 'package:t2mobile/utilities/exceptions/format_invalid.dart';
import 'package:t2mobile/utilities/exec.dart';
import 'package:t2mobile/utilities/validators/length_validator.dart';

part 'account_form.freezed.dart';
part 'account_form.gform.dart';

@freezed
@Rf(name: 'Account')
class AccountModel with _$AccountModel {
  const AccountModel._();

  @Assert('matrix.length == 7')
  const factory AccountModel({
    @RfControl(validators: [RequiredValidator()]) required String id,
    @RfControl(validators: [RequiredValidator()]) required String password,
    @RfArray(itemValidators: [RequiredValidator(), LengthValidator(10)])
    required List<String> matrix,
  }) = _AccountModel;

  factory AccountModel.empty() =>
      AccountModel(id: '', password: '', matrix: List.filled(7, ''));

  factory AccountModel.fromData(AccountData data) => AccountModel(
        id: data.id,
        password: data.password,
        matrix: List.generate(7, (i) => data.matrix.getRow(i)),
      );

  AccountData toData() => AccountData(
        id: id,
        password: password,
        matrix: MatrixData(matrix.join()),
      );
}

class AccountFormView extends HookWidget {
  final AccountForm formModel;
  final TextStyle? matrixLabelTextStyle;
  final void Function(AccountData)? onSubmitted;

  const AccountFormView({
    super.key,
    required this.formModel,
    this.matrixLabelTextStyle,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    final firstMatrixRowFocusNode = useFocusNode();

    return Column(children: [
      // 学籍番号
      ReactiveTextField(
        formControl: formModel.idControl,
        autocorrect: false,
        enableSuggestions: false,
        onTapOutside: (_) => primaryFocus?.unfocus(),
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          labelText: AppLocalizations.of(context)!.studentId,
          hintText: '00X00000',
        ),
      ),

      const SizedBox(height: 16),

      // パスワード
      HookBuilder(builder: (context) {
        final isVisible = useState(false);

        return ReactiveTextField(
          formControl: formModel.passwordControl,
          autocorrect: false,
          enableSuggestions: false,
          onTapOutside: (_) => primaryFocus?.unfocus(),
          textInputAction: TextInputAction.next,
          onEditingComplete: (_) => firstMatrixRowFocusNode.requestFocus(),
          keyboardType: TextInputType.visiblePassword,
          obscureText: !isVisible.value,
          decoration: InputDecoration(
            labelText: AppLocalizations.of(context)!.password,
            suffixIcon: IconButton(
              icon: Icon(
                  isVisible.value ? Icons.visibility_off : Icons.visibility),
              onPressed: () => isVisible.value = !isVisible.value,
            ),
          ),
        );
      }),

      const SizedBox(height: 16),

      // マトリクスコード
      Row(children: [
        Text(
          AppLocalizations.of(context)!.matrixCode,
          style:
              matrixLabelTextStyle ?? Theme.of(context).textTheme.titleMedium,
        ),

        const Spacer(),

        // インポート
        Builder(builder: (context) {
          void import(FutureOr<String?> Function() getJson) => exec(
                context,
                () async {
                  final formModel =
                      ReactiveAccountForm.of(context, listen: false);
                  final source = await getJson();
                  if (source == null) return false;
                  final List<String> data;
                  try {
                    data = (jsonDecode(source) as List).cast<String>();
                    if (data.length != 70 ||
                        data.any(
                          (c) => c.length != 1,
                        )) {
                      throw Exception();
                    }
                  } catch (_) {
                    throw const FormatInvalidException();
                  }
                  formModel?.matrixValueReset(
                    List.generate(
                        7,
                        (i) =>
                            List.generate(10, (j) => data[j * 7 + i]).join()),
                    removeFocus: true,
                  );
                  return true;
                },
                showLoading: false,
                onSuccess: ExecDefaults.snackBarOnSuccess<bool>(
                  message: (res) => res
                      ? AppLocalizations.of(context)!.importedSuccessfully
                      : null,
                  showCloseIcon: true,
                ),
              );

          return MenuAnchor(
            builder: (context, controller, _) => IconButton(
              onPressed: () =>
                  controller.isOpen ? controller.close() : controller.open(),
              icon: Transform.rotate(
                angle: pi,
                child: const Icon(Symbols.input_circle),
              ),
            ),
            menuChildren: [
              MenuItemButton(
                onPressed: () => import(() async {
                  final data = await Clipboard.getData(Clipboard.kTextPlain);
                  if (data == null || data.text == null || data.text!.isEmpty) {
                    throw const ClipboardEmptyException();
                  }
                  return data.text!;
                }),
                child: Text(AppLocalizations.of(context)!.pasteFromClipboard),
              ),
              MenuItemButton(
                onPressed: () => import(() async {
                  final result = await FilePicker.platform.pickFiles();
                  if (result == null || result.files.isEmpty) return null;
                  final file = File(result.files.single.path!);
                  return await file.readAsString();
                }),
                child: Text(AppLocalizations.of(context)!.importFromFile),
              ),
            ],
          );
        }),

        // エクスポート
        ReactiveAccountFormConsumer(builder: (context, formModel, _) {
          void export(FutureOr<void> Function(String) setJson) => exec(
                context,
                () async {
                  final control = formModel.matrixControl;
                  assert(control.valid);
                  final rows = control.value!.cast<String>();
                  await setJson(jsonEncode(
                      List.generate(70, (i) => rows[i % 7][i ~/ 7])));
                },
                showLoading: false,
                onSuccess: ExecDefaults.snackBarOnSuccess(
                  message: (_) =>
                      AppLocalizations.of(context)!.exportedSuccessfully,
                  showCloseIcon: true,
                ),
              );

          return MenuAnchor(
            builder: (context, controller, _) => IconButton(
              onPressed: formModel.matrixControl.valid || controller.isOpen
                  ? () =>
                      controller.isOpen ? controller.close() : controller.open()
                  : null,
              icon: Transform.rotate(
                angle: pi,
                child: const Icon(Symbols.output_circle),
              ),
            ),
            menuChildren: [
              MenuItemButton(
                onPressed: () => export(
                    (json) => Clipboard.setData(ClipboardData(text: json))),
                child: Text(AppLocalizations.of(context)!.copyToClipboard),
              ),
              MenuItemButton(
                onPressed: () => export((json) => FilePicker.platform.saveFile(
                      fileName: 'matrix.json',
                      bytes: utf8.encode(json),
                    )),
                child: Text(AppLocalizations.of(context)!.exportToFile),
              ),
            ],
          );
        }),
      ]),
      for (var i = 0; i < 7; i++) ...[
        const SizedBox(height: 8),

        // マトリクスコードの各行
        ReactiveTextField(
          focusNode: i == 0 ? firstMatrixRowFocusNode : null,
          formControl:
              formModel.matrixControl.controls[i] as FormControl<String>,
          textCapitalization: TextCapitalization.characters,
          inputFormatters: [
            const _UppercasingTextInputFormatter(),
            FilteringTextInputFormatter.allow(RegExp(r'[A-Z]')),
          ],
          autocorrect: false,
          enableSuggestions: false,
          onTapOutside: (_) => primaryFocus?.unfocus(),
          textInputAction: i < 6 ? TextInputAction.next : TextInputAction.done,
          onChanged: (control) {
            if (control.value?.length == 10) {
              if (i < 6) {
                primaryFocus?.nextFocus();
              } else {
                primaryFocus?.unfocus();
              }
            }
          },
          onSubmitted: i == 6 && onSubmitted != null
              ? (_) {
                  final formModel =
                      ReactiveAccountForm.of(context, listen: false);
                  if (formModel != null && formModel.form.valid) {
                    onSubmitted!(formModel.model.toData());
                  }
                }
              : null,
          decoration: InputDecoration(
            labelText: AppLocalizations.of(context)!.rowN(i + 1),
            hintText: 'ABCDEFGHIJ',
            suffix: ReactiveAccountFormConsumer(
              builder: (context, formModel, _) => Text(
                '${formModel.matrixControl.value?[i]?.length ?? 0}/10',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            isDense: true,
            contentPadding: const EdgeInsets.fromLTRB(12, 16, 12, 8),
          ),
          style: GoogleFonts.robotoMono(),
        ),
      ],
    ]);
  }
}

class _UppercasingTextInputFormatter extends TextInputFormatter {
  const _UppercasingTextInputFormatter();

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) =>
      TextEditingValue(
        text: newValue.text.toUpperCase(),
        selection: newValue.selection,
      );
}
