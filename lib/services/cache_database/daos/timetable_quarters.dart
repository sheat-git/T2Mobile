import 'package:drift/drift.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart';
import 'package:t2mobile/services/cache_database/tables/timetable_quarters.dart';

part 'timetable_quarters.g.dart';

@DriftAccessor(tables: [TimetableQuarters])
class TimetableQuartersDao extends DatabaseAccessor<CacheDatabase>
    with _$TimetableQuartersDaoMixin {
  TimetableQuartersDao(super.db);

  Future<List<TimetableQuarter>> getAll(String lang) =>
      (select(timetableQuarters)..where((tbl) => tbl.lang.equals(lang))).get();

  Future<void> setAll(List<TimetableQuarter> data) => batch((batch) {
        final langs = data.map((e) => e.lang).toSet();
        batch.deleteWhere(timetableQuarters, (tbl) => tbl.lang.isIn(langs));
        batch.insertAll(timetableQuarters, data);
      });
}
