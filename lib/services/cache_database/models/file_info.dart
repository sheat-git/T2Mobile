import 'package:drift/drift.dart' show TypeConverter;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_info.freezed.dart';
part 'file_info.g.dart';

@freezed
class FileInfo with _$FileInfo {
  const factory FileInfo({
    required String url,
    String? name,
    String? path,
    DateTime? modifiedAt,
  }) = _FileInfo;

  factory FileInfo.fromJson(Map<String, dynamic> json) =>
      _$FileInfoFromJson(json);

  static final listConverter = TypeConverter.json(
    fromJson: (json) => (json as List)
        .cast<Map<String, dynamic>>()
        .map(FileInfo.fromJson)
        .toList(),
    toJson: (data) => data.map((c) => c.toJson()).toList(),
  );
}
