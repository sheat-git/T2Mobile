import 'package:drift/drift.dart';

class CourseContents extends Table {
  IntColumn get courseId => integer()();
  IntColumn get id => integer()();
  TextColumn get name => text()();
  TextColumn get summary => text()();
  TextColumn get summaryFormat => textEnum<SummaryFormat>().nullable()();
  IntColumn get rawSummaryFormat => integer()();

  @override
  Set<Column> get primaryKey => {courseId, id}; // courseIdは念の為
}

enum SummaryFormat {
  moodle,
  html,
  plain,
  markdown;

  static SummaryFormat? fromValue(int value) => switch (value) {
        0 => SummaryFormat.moodle,
        1 => SummaryFormat.html,
        2 => SummaryFormat.plain,
        4 => SummaryFormat.markdown,
        _ => null,
      };
}
