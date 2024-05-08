import 'package:freezed_annotation/freezed_annotation.dart';

part 'warning.freezed.dart';
part 'warning.g.dart';

/// `CoreWSExternalWarning`
@freezed
class WarningModel with _$WarningModel {
  const factory WarningModel({
    /// Item.
    String? item,

    /// Item id.
    int? itemid,

    /// The warning code can be used by the client app to implement specific behaviour.
    required String warningcode,

    /// Untranslated English message to explain the warning.
    required String message,
  }) = _WarningModel;

  factory WarningModel.fromJson(Map<String, dynamic> json) =>
      _$WarningModelFromJson(json);
}
