import 'package:drift/drift.dart';

class Assignments extends Table {
  IntColumn get id => integer()();

  @override
  Set<Column> get primaryKey => {id};
}
