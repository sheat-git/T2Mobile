import 'package:drift/drift.dart';

class TimetableQuarters extends Table {
  TextColumn get lang => text()();
  TextColumn get value => text()();
  TextColumn get label => text()();

  @override
  Set<Column> get primaryKey => {lang, value};
}
