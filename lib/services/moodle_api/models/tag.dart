import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

/// `CoreTagItem`
@freezed
class TagModel with _$TagModel {
  const factory TagModel({
    /// Tag id.
    required int id,

    /// Tag name.
    required String name,

    /// The raw, unnormalised name for the tag as entered by users.
    required String rawname,

    /// Whether this tag is standard.
    required bool isstandard,

    /// Tag collection id.
    required int tagcollid,

    /// Tag instance id.
    required int taginstanceid,

    /// Context the tag instance belongs to.
    required int taginstancecontextid,

    /// Id of the record tagged.
    required int itemid,

    /// Tag ordering.
    required int ordering,

    /// Whether the tag is flagged as inappropriate.
    required int flag,
  }) = _TagModel;

  factory TagModel.fromJson(Map<String, dynamic> json) =>
      _$TagModelFromJson(json);
}
