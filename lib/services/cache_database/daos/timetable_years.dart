import 'package:drift/drift.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart';
import 'package:t2mobile/services/cache_database/tables/timetable_years.dart';

part 'timetable_years.g.dart';

@DriftAccessor(tables: [TimetableYears])
class TimetableYearsDao extends DatabaseAccessor<CacheDatabase>
    with _$TimetableYearsDaoMixin {
  TimetableYearsDao(super.db);

  Future<List<TimetableYear>> getAll(String lang) =>
      (select(timetableYears)..where((tbl) => tbl.lang.equals(lang))).get();

  Future<void> setAll(List<TimetableYear> data) => batch((batch) {
        final langs = data.map((e) => e.lang).toSet();
        batch.deleteWhere(timetableYears, (tbl) => tbl.lang.isIn(langs));
        batch.insertAll(timetableYears, data);
      });
}
