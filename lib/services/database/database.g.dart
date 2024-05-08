// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $AssignmentInfosTable extends AssignmentInfos
    with TableInfo<$AssignmentInfosTable, AssignmentInfo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AssignmentInfosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isHiddenMeta =
      const VerificationMeta('isHidden');
  @override
  late final GeneratedColumn<bool> isHidden = GeneratedColumn<bool>(
      'is_hidden', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_hidden" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [id, isHidden];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'assignment_infos';
  @override
  VerificationContext validateIntegrity(Insertable<AssignmentInfo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('is_hidden')) {
      context.handle(_isHiddenMeta,
          isHidden.isAcceptableOrUnknown(data['is_hidden']!, _isHiddenMeta));
    } else if (isInserting) {
      context.missing(_isHiddenMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  AssignmentInfo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AssignmentInfo(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      isHidden: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_hidden'])!,
    );
  }

  @override
  $AssignmentInfosTable createAlias(String alias) {
    return $AssignmentInfosTable(attachedDatabase, alias);
  }
}

class AssignmentInfo extends DataClass implements Insertable<AssignmentInfo> {
  final int id;
  final bool isHidden;
  const AssignmentInfo({required this.id, required this.isHidden});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['is_hidden'] = Variable<bool>(isHidden);
    return map;
  }

  AssignmentInfosCompanion toCompanion(bool nullToAbsent) {
    return AssignmentInfosCompanion(
      id: Value(id),
      isHidden: Value(isHidden),
    );
  }

  factory AssignmentInfo.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AssignmentInfo(
      id: serializer.fromJson<int>(json['id']),
      isHidden: serializer.fromJson<bool>(json['isHidden']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'isHidden': serializer.toJson<bool>(isHidden),
    };
  }

  AssignmentInfo copyWith({int? id, bool? isHidden}) => AssignmentInfo(
        id: id ?? this.id,
        isHidden: isHidden ?? this.isHidden,
      );
  @override
  String toString() {
    return (StringBuffer('AssignmentInfo(')
          ..write('id: $id, ')
          ..write('isHidden: $isHidden')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, isHidden);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AssignmentInfo &&
          other.id == this.id &&
          other.isHidden == this.isHidden);
}

class AssignmentInfosCompanion extends UpdateCompanion<AssignmentInfo> {
  final Value<int> id;
  final Value<bool> isHidden;
  final Value<int> rowid;
  const AssignmentInfosCompanion({
    this.id = const Value.absent(),
    this.isHidden = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AssignmentInfosCompanion.insert({
    required int id,
    required bool isHidden,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        isHidden = Value(isHidden);
  static Insertable<AssignmentInfo> custom({
    Expression<int>? id,
    Expression<bool>? isHidden,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (isHidden != null) 'is_hidden': isHidden,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AssignmentInfosCompanion copyWith(
      {Value<int>? id, Value<bool>? isHidden, Value<int>? rowid}) {
    return AssignmentInfosCompanion(
      id: id ?? this.id,
      isHidden: isHidden ?? this.isHidden,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (isHidden.present) {
      map['is_hidden'] = Variable<bool>(isHidden.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AssignmentInfosCompanion(')
          ..write('id: $id, ')
          ..write('isHidden: $isHidden, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  _$DatabaseManager get managers => _$DatabaseManager(this);
  late final $AssignmentInfosTable assignmentInfos =
      $AssignmentInfosTable(this);
  late final AssignmentInfosDao assignmentInfosDao =
      AssignmentInfosDao(this as Database);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [assignmentInfos];
}

typedef $$AssignmentInfosTableInsertCompanionBuilder = AssignmentInfosCompanion
    Function({
  required int id,
  required bool isHidden,
  Value<int> rowid,
});
typedef $$AssignmentInfosTableUpdateCompanionBuilder = AssignmentInfosCompanion
    Function({
  Value<int> id,
  Value<bool> isHidden,
  Value<int> rowid,
});

class $$AssignmentInfosTableTableManager extends RootTableManager<
    _$Database,
    $AssignmentInfosTable,
    AssignmentInfo,
    $$AssignmentInfosTableFilterComposer,
    $$AssignmentInfosTableOrderingComposer,
    $$AssignmentInfosTableProcessedTableManager,
    $$AssignmentInfosTableInsertCompanionBuilder,
    $$AssignmentInfosTableUpdateCompanionBuilder> {
  $$AssignmentInfosTableTableManager(_$Database db, $AssignmentInfosTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$AssignmentInfosTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$AssignmentInfosTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$AssignmentInfosTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<bool> isHidden = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AssignmentInfosCompanion(
            id: id,
            isHidden: isHidden,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required int id,
            required bool isHidden,
            Value<int> rowid = const Value.absent(),
          }) =>
              AssignmentInfosCompanion.insert(
            id: id,
            isHidden: isHidden,
            rowid: rowid,
          ),
        ));
}

class $$AssignmentInfosTableProcessedTableManager extends ProcessedTableManager<
    _$Database,
    $AssignmentInfosTable,
    AssignmentInfo,
    $$AssignmentInfosTableFilterComposer,
    $$AssignmentInfosTableOrderingComposer,
    $$AssignmentInfosTableProcessedTableManager,
    $$AssignmentInfosTableInsertCompanionBuilder,
    $$AssignmentInfosTableUpdateCompanionBuilder> {
  $$AssignmentInfosTableProcessedTableManager(super.$state);
}

class $$AssignmentInfosTableFilterComposer
    extends FilterComposer<_$Database, $AssignmentInfosTable> {
  $$AssignmentInfosTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isHidden => $state.composableBuilder(
      column: $state.table.isHidden,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$AssignmentInfosTableOrderingComposer
    extends OrderingComposer<_$Database, $AssignmentInfosTable> {
  $$AssignmentInfosTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isHidden => $state.composableBuilder(
      column: $state.table.isHidden,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class _$DatabaseManager {
  final _$Database _db;
  _$DatabaseManager(this._db);
  $$AssignmentInfosTableTableManager get assignmentInfos =>
      $$AssignmentInfosTableTableManager(_db, _db.assignmentInfos);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dbHash() => r'd8b5a4c5d1a71573ca656d2050db682832e1cc88';

/// See also [db].
@ProviderFor(db)
final dbProvider = Provider<Database>.internal(
  db,
  name: r'dbProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dbHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DbRef = ProviderRef<Database>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
