import 'package:drift/drift.dart';

class Courses extends Table {
  IntColumn get id => integer()();
  TextColumn get nameJa => text()();
  TextColumn get nameEn => text()();
  IntColumn get categoryId => integer().nullable()();
  BoolColumn get isEnrolled => boolean()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}
