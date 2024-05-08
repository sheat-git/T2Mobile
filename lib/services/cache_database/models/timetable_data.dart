import 'package:freezed_annotation/freezed_annotation.dart';

part 'timetable_data.freezed.dart';
part 'timetable_data.g.dart';

@freezed
class TimetableData with _$TimetableData {
  @Assert(
    'columns.map((column) => column.length).toSet().length == 1',
    'All columns must have the same length.',
  )
  factory TimetableData({
    required List<TimetableColumn> columns,
    List<TimetableCourse>? otherCourses,
  }) = _TimetableData;

  factory TimetableData.fromJson(Map<String, dynamic> json) =>
      _$TimetableDataFromJson(json);
}

typedef TimetableColumn = List<TimetableContent?>;

@freezed
sealed class TimetableContent with _$TimetableContent {
  const factory TimetableContent.header({
    required String text,
  }) = TimetableHeader;

  const factory TimetableContent.course({
    required int id,
    required String name,
  }) = TimetableCourse;

  factory TimetableContent.fromJson(Map<String, dynamic> json) =>
      _$TimetableContentFromJson(json);
}
