import 'package:drift/drift.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart';
import 'package:t2mobile/services/cache_database/tables/timetables.dart';

part 'timetables.g.dart';

@DriftAccessor(tables: [Timetables])
class TimetablesDao extends DatabaseAccessor<CacheDatabase>
    with _$TimetablesDaoMixin {
  TimetablesDao(super.db);

  Future<Timetable?> get({
    required String lang,
    required String year,
    required String quarter,
  }) =>
      (select(timetables)
            ..where((tbl) =>
                tbl.lang.equals(lang) &
                tbl.year.equals(year) &
                tbl.quarter.equals(quarter)))
          .getSingleOrNull();

  Future<Timetable?> getLastUpdated(String lang) => (select(timetables)
        ..where((tbl) => tbl.lang.equals(lang))
        ..orderBy([(t) => OrderingTerm.desc(t.updatedAt)])
        ..limit(1))
      .getSingleOrNull();

  Future<void> set(Timetable data) =>
      into(timetables).insertOnConflictUpdate(data);
}
