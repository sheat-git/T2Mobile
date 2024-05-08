import 'package:drift/drift.dart';
import 'package:t2mobile/services/database/database.dart';
import 'package:t2mobile/services/database/tables/assignment_infos.dart';

part 'assignment_infos.g.dart';

@DriftAccessor(tables: [AssignmentInfos])
class AssignmentInfosDao extends DatabaseAccessor<Database>
    with _$AssignmentInfosDaoMixin {
  AssignmentInfosDao(super.db);

  Future<List<int>> getHiddenIds() => customSelect(
        'SELECT ${assignmentInfos.id.name} FROM ${assignmentInfos.actualTableName} WHERE ${assignmentInfos.isHidden.name} = ?',
        variables: [Variable.withBool(true)],
        readsFrom: {assignmentInfos},
      ).map((row) => row.read<int>(assignmentInfos.id.name)).get();

  Future<AssignmentInfo?> get(int id) async =>
      (select(assignmentInfos)..where((t) => t.id.equals(id)))
          .getSingleOrNull();

  Future<void> set(AssignmentInfo data) =>
      into(assignmentInfos).insertOnConflictUpdate(data);
}
