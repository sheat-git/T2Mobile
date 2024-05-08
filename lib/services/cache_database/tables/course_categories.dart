import 'package:drift/drift.dart';

@DataClassName('CourseCategory')
class CourseCategories extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  IntColumn get parentId => integer().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
