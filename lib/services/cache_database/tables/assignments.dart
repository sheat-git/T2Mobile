import 'package:drift/drift.dart';
import 'package:t2mobile/services/cache_database/models/file_info.dart';
import 'package:t2mobile/services/cache_database/models/format.dart';

class Assignments extends Table {
  IntColumn get id => integer()();
  IntColumn get courseId => integer()();
  IntColumn get courseModuleId => integer()();
  TextColumn get name => text()();
  TextColumn get intro => text().nullable()();
  TextColumn get introFormat => textEnum<Format>().nullable()();
  TextColumn get introFiles => text().map(FileInfo.listConverter)();
  DateTimeColumn get allowSubmissionsFromDate => dateTime().nullable()();
  DateTimeColumn get dueDate => dateTime().nullable()();
  DateTimeColumn get cutOffDate => dateTime().nullable()();
  IntColumn get timeLimit => integer().nullable()();
  BoolColumn get isNotRequiredToSubmit => boolean()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}
