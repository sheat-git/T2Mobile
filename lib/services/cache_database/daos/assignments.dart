import 'package:drift/drift.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart';
import 'package:t2mobile/services/cache_database/tables/assignments.dart';

part 'assignments.g.dart';

@DriftAccessor(tables: [Assignments])
class AssignmentsDao extends DatabaseAccessor<CacheDatabase>
    with _$AssignmentsDaoMixin {
  AssignmentsDao(super.db);

  Future<List<int>> getAllIds() => customSelect(
        'SELECT ${assignments.id.name} FROM ${assignments.actualTableName}',
        readsFrom: {assignments},
      ).map((row) => row.read<int>(assignments.id.name)).get();

  Future<List<Assignment>> getMany(Iterable<int> ids) =>
      (select(assignments)..where((t) => t.id.isIn(ids))).get();

  Future<void> setMany(List<Assignment> data) => batch((b) => b.insertAll(
        assignments,
        data,
        mode: InsertMode.insertOrReplace,
      ));

  Future<Assignment?> get(int id) async =>
      (select(assignments)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<void> set(Assignment data) =>
      into(assignments).insertOnConflictUpdate(data);
}
