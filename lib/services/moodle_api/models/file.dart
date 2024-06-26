import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t2mobile/services/cache_database/models/file_info.dart';

part 'file.freezed.dart';
part 'file.g.dart';

/// `CoreWSExternalFile`
@freezed
class FileModel with _$FileModel {
  const FileModel._();

  const factory FileModel({
    /// Downloadable file url.
    required String fileurl,

    /// File name.
    String? filename,

    /// File path.
    String? filepath,

    /// File size.
    int? filesize,

    /// Time modified.
    int? timemodified,

    /// File mime type.
    String? mimetype,

    /// Whether is an external file.
    int? isexternalfile,

    /// The repository type for external files.
    String? repositorytype,
  }) = _FileModel;

  factory FileModel.fromJson(Map<String, dynamic> json) =>
      _$FileModelFromJson(json);

  FileInfo toDb() => FileInfo(
        url: fileurl,
        name: filename,
        modifiedAt: timemodified != null
            ? DateTime.fromMillisecondsSinceEpoch(timemodified!)
            : null,
      );
}
