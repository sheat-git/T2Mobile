import 'dart:developer';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';
import 'package:t2mobile/services/cache_database/daos/course_categories.dart';
import 'package:t2mobile/services/cache_database/daos/course_content_modules.dart';
import 'package:t2mobile/services/cache_database/daos/course_contents.dart';
import 'package:t2mobile/services/cache_database/daos/courses.dart';
import 'package:t2mobile/services/cache_database/daos/timestamps.dart';
import 'package:t2mobile/services/cache_database/daos/timetable_quarters.dart';
import 'package:t2mobile/services/cache_database/daos/timetable_years.dart';
import 'package:t2mobile/services/cache_database/daos/timetables.dart';
import 'package:t2mobile/services/cache_database/models/course_content_module_content.dart';
import 'package:t2mobile/services/cache_database/models/timetable_data.dart';
import 'package:t2mobile/services/cache_database/tables/assignments.dart';
import 'package:t2mobile/services/cache_database/tables/course_categories.dart';
import 'package:t2mobile/services/cache_database/tables/course_content_modules.dart';
import 'package:t2mobile/services/cache_database/tables/course_contents.dart';
import 'package:t2mobile/services/cache_database/tables/courses.dart';
import 'package:t2mobile/services/cache_database/tables/notifications.dart';
import 'package:t2mobile/services/cache_database/tables/timestamps.dart';
import 'package:t2mobile/services/cache_database/tables/timetable_quarters.dart';
import 'package:t2mobile/services/cache_database/tables/timetable_years.dart';
import 'package:t2mobile/services/cache_database/tables/timetables.dart';

part 'cache_database.g.dart';

@Riverpod(keepAlive: true)
class CacheDb extends _$CacheDb {
  @override
  CacheDatabase build() => CacheDatabase();

  Future<void> deleteFile() async {
    await state.close();
    final file = await _getFile();
    if (await file.exists()) {
      await file.delete();
    }
    state = CacheDatabase();
  }
}

@DriftDatabase(
  tables: [
    Assignments,
    CourseCategories,
    CourseContentModules,
    CourseContents,
    Courses,
    Notifications,
    Timestamps,
    TimetableQuarters,
    TimetableYears,
    Timetables,
  ],
  daos: [
    CourseCategoriesDao,
    CourseContentModulesDao,
    CourseContentsDao,
    CoursesDao,
    TimestampsDao,
    TimetableQuartersDao,
    TimetableYearsDao,
    TimetablesDao,
  ],
)
class CacheDatabase extends _$CacheDatabase {
  CacheDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

Future<File> _getFile() async {
  final dbFolder = await getApplicationDocumentsDirectory();
  return File(p.join(dbFolder.path, 'cache.sqlite'));
}

LazyDatabase _openConnection() => LazyDatabase(() async {
      final file = await _getFile();
      log('Cache database file: ${file.path}');

      if (Platform.isAndroid) {
        await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
      }

      final cachebase = (await getTemporaryDirectory()).path;
      sqlite3.tempDirectory = cachebase;

      return NativeDatabase.createInBackground(file);
    });
