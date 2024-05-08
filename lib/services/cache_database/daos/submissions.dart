import 'package:drift/drift.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart';
import 'package:t2mobile/services/cache_database/tables/submissions.dart';

part 'submissions.g.dart';

@DriftAccessor(tables: [Submissions])
class SubmissionsDao extends DatabaseAccessor<CacheDatabase>
    with _$SubmissionsDaoMixin {
  SubmissionsDao(super.db);

  Future<List<Submission>> getAll() => select(submissions).get();

  Future<List<int>> getSubmittedAssignmentIds() => customSelect(
        'SELECT ${submissions.assignmentId.name} FROM ${submissions.actualTableName} WHERE ${submissions.isSubmitted.name} = ?',
        variables: [Variable.withBool(true)],
        readsFrom: {submissions},
      ).map((row) => row.read<int>(submissions.assignmentId.name)).get();

  Future<Submission?> get(int id) async =>
      (select(submissions)..where((t) => t.id.equals(id))).getSingleOrNull();

  Future<void> set(Submission data) =>
      into(submissions).insertOnConflictUpdate(data);
}
