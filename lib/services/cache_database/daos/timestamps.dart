import 'package:drift/drift.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart';
import 'package:t2mobile/services/cache_database/tables/timestamps.dart';

part 'timestamps.g.dart';

@DriftAccessor(tables: [Timestamps])
class TimestampsDao extends DatabaseAccessor<CacheDatabase>
    with _$TimestampsDaoMixin {
  TimestampsDao(super.db);

  /// [id]はTimestampIdsを使うこと
  Future<Timestamp?> get(String id) =>
      (select(timestamps)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();

  /// [id]はTimestampIdsを使うこと
  Future<void> set(String id, [DateTime? at]) => into(timestamps)
      .insertOnConflictUpdate(Timestamp(id: id, at: at ?? DateTime.now()));
}
