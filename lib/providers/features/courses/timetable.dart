import 'dart:async';

import 'package:html/dom.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:t2mobile/providers/base/cacheable_notifier.dart';
import 'package:t2mobile/providers/features/courses/timetable_options.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart' as d;
import 'package:t2mobile/services/cache_database/models/timetable_data.dart';
import 'package:t2mobile/services/moodle_web.dart';

part 'timetable.g.dart';

@riverpod
class Timetable extends _$Timetable with CacheableNotifier<d.Timetable> {
  String? _year;
  String? _quarter;

  @override
  Future<CacheableData<d.Timetable>> build(String lang) => loadAndFetch();

  @override
  bool shouldFetch(d.Timetable cache) =>
      DateTime.now().difference(cache.updatedAt).inDays >= 1;

  @override
  Future<d.Timetable?> load() async {
    final year = _year;
    final quarter = _quarter;
    final cacheDb = ref.read(d.cacheDbProvider);
    final d.Timetable? timetable;
    if (year != null && quarter != null) {
      timetable = await cacheDb.timetablesDao.get(
        lang: lang,
        year: year,
        quarter: quarter,
      );
    } else {
      timetable = await cacheDb.timetablesDao.getLastUpdated(lang);
    }
    if (timetable != null) {
      _year = timetable.year;
      _quarter = timetable.quarter;
    }
    return timetable;
  }

  TimetableCourse? _extractCourse(Element element) {
    final a = element.querySelector('a');
    if (a == null) return null;
    final href = Uri.parse(a.attributes['href']!);
    final id = int.parse(href.queryParameters['id']!);
    return TimetableCourse(id: id, name: a.text.trim());
  }

  Future<d.Timetable> _fetch({
    required String? year,
    required String? quarter,
  }) async {
    final moodleWeb = ref.read(moodleWebProvider);
    final document = await moodleWeb.getDashboard(
      lang: lang,
      year: year,
      quarter: quarter,
    );
    // year, quarterの抽出
    final years = document.querySelectorAll('select[name=year] option');
    final selectedYear =
        years.firstWhere((element) => element.attributes['selected'] != null);
    final quarters = document.querySelectorAll('select[name=quota] option');
    final selectedQuarter = quarters
        .firstWhere((element) => element.attributes['selected'] != null);
    unawaited(ref.read(timetableOptionsProvider(lang).notifier).set(
          years: years
              .map((year) => d.TimetableYear(
                    lang: lang,
                    value: year.attributes['value']!,
                    label: year.text.trim(),
                  ))
              .toList(),
          quarters: quarters
              .map((quarter) => d.TimetableQuarter(
                    lang: lang,
                    value: quarter.attributes['value']!,
                    label: quarter.text.trim(),
                  ))
              .toList(),
        ));
    // 時間割の抽出
    final section = document.querySelector('section.block_tttimetable')!;
    final tables = section.querySelectorAll('table');
    final columns = <TimetableColumn>[];
    final rows = tables.first.querySelectorAll('tr');
    for (int i = 0; i < rows.length; i++) {
      final row = rows[i];
      final cells = row.querySelectorAll('th, td');
      for (int j = 0; j < cells.length; j++) {
        final cell = cells[j];
        final TimetableContent? content;
        if (cell.localName == 'th') {
          content = TimetableHeader(text: cell.text.trim());
        } else {
          content = _extractCourse(cell);
        }
        if (i == 0) {
          columns.add([content]);
        } else {
          columns[j].add(content);
        }
      }
    }
    final List<TimetableCourse>? otherCourses;
    if (tables.length == 1) {
      otherCourses = null;
    } else {
      otherCourses = tables[1]
          .querySelectorAll('td')
          .map(_extractCourse)
          .nonNulls
          .toList();
    }
    return d.Timetable(
      lang: lang,
      year: selectedYear.attributes['value']!,
      quarter: selectedQuarter.attributes['value']!,
      yearLabel: selectedYear.text.trim(),
      quarterLabel: selectedQuarter.text.trim(),
      data: TimetableData(
        columns: columns,
        otherCourses: otherCourses,
      ),
      updatedAt: DateTime.now(),
    );
  }

  @override
  Future<d.Timetable> fetch() async {
    final year = _year;
    final quarter = _quarter;
    final data = await _fetch(year: year, quarter: quarter);
    if ((year == null || data.year == year) &&
        (quarter == null || data.quarter == quarter)) {
      return data;
    }
    // Moodle Cookieが期限切れで勝手に更新された場合、現在のyear, quarterで取得されてしまう。意図しないものだった場合に再取得
    return await _fetch(year: data.year, quarter: data.quarter);
  }

  @override
  Future<void> save(d.Timetable data) async {
    final cacheDb = ref.read(d.cacheDbProvider);
    await cacheDb.timetablesDao.set(data);
  }

  Future<void> updateTerm(String year, String quarter) async {
    _year = year;
    _quarter = quarter;
    await update((_) async {
      state = const AsyncLoading();
      final cache = await load();
      if (cache != null) {
        final data = CachedData(cache);
        if (!shouldFetch(cache)) return data;
        setLoading(AsyncData(data));
      }
      return await fetchAndSave();
    });
  }
}
