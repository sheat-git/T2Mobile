import 'package:drift/drift.dart';
import 'package:t2mobile/services/cache_database/models/timetable_data.dart';

class Timetables extends Table {
  TextColumn get lang => text()();
  TextColumn get year => text()();
  TextColumn get quarter => text()();

  TextColumn get yearLabel => text()();
  TextColumn get quarterLabel => text()();
  TextColumn get data => text().map(TypeConverter.json(
        fromJson: (json) => TimetableData.fromJson(json),
        toJson: (data) => data.toJson(),
      ))();

  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {lang, year, quarter};
}
