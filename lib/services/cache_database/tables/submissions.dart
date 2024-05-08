import 'package:drift/drift.dart';
import 'package:t2mobile/services/cache_database/models/file_info.dart';
import 'package:t2mobile/services/cache_database/models/format.dart';

class Submissions extends Table {
  IntColumn get assignmentId => integer()();
  IntColumn get id => integer().nullable()();
  BoolColumn get canEdit => boolean()();
  BoolColumn get isSubmitted => boolean()();
  DateTimeColumn get modifiedAt => dateTime().nullable()();

  TextColumn get onlineText => text().nullable()();
  TextColumn get onlineTextFormat => textEnum<Format>().nullable()();

  TextColumn get files => text().map(FileInfo.listConverter)();

  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {assignmentId};
}
