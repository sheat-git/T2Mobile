import 'package:drift/drift.dart';
import 'package:t2mobile/services/cache_database/models/format.dart';

@TableIndex(name: 'course_content_id', columns: {#id})
class CourseContents extends Table {
  IntColumn get courseId => integer()();
  IntColumn get id => integer()();
  TextColumn get name => text()();
  TextColumn get summary => text()();
  TextColumn get summaryFormat => textEnum<Format>().nullable()();

  @override
  Set<Column> get primaryKey => {courseId, id}; // courseIdは念の為
}
