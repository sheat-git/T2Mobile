import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart';

part 'timetable_options.freezed.dart';
part 'timetable_options.g.dart';

@freezed
class TimetableOptionsData with _$TimetableOptionsData {
  const factory TimetableOptionsData({
    required List<TimetableYear> years,
    required List<TimetableQuarter> quarters,
  }) = _TimetableOptionsData;
}

@riverpod
class TimetableOptions extends _$TimetableOptions {
  @override
  Future<TimetableOptionsData> build(String lang) async {
    final cacheDb = ref.read(cacheDbProvider);
    final (years, quarters) = await (
      cacheDb.timetableYearsDao.getAll(lang),
      cacheDb.timetableQuartersDao.getAll(lang),
    ).wait;
    return TimetableOptionsData(years: years, quarters: quarters);
  }

  Future<void> set({
    List<TimetableYear>? years,
    List<TimetableQuarter>? quarters,
  }) async {
    await update((data) => data.copyWith(
          years: years ?? data.years,
          quarters: quarters ?? data.quarters,
        ));
    final cacheDb = ref.read(cacheDbProvider);
    await cacheDb.transaction(() => Future.wait([
          if (years != null) cacheDb.timetableYearsDao.setAll(years),
          if (quarters != null) cacheDb.timetableQuartersDao.setAll(quarters),
        ]));
  }
}
