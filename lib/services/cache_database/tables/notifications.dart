import 'package:drift/drift.dart';

class Notifications extends Table {
  IntColumn get id => integer()();

  @override
  Set<Column> get primaryKey => {id};
}
