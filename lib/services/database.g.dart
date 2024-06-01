// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $SpendingTableTable extends SpendingTable
    with TableInfo<$SpendingTableTable, SpendingTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SpendingTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, amount, note];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'spending_table';
  @override
  VerificationContext validateIntegrity(Insertable<SpendingTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SpendingTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SpendingTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
    );
  }

  @override
  $SpendingTableTable createAlias(String alias) {
    return $SpendingTableTable(attachedDatabase, alias);
  }
}

class SpendingTableData extends DataClass
    implements Insertable<SpendingTableData> {
  final int id;
  final double amount;
  final String note;
  const SpendingTableData(
      {required this.id, required this.amount, required this.note});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['amount'] = Variable<double>(amount);
    map['note'] = Variable<String>(note);
    return map;
  }

  SpendingTableCompanion toCompanion(bool nullToAbsent) {
    return SpendingTableCompanion(
      id: Value(id),
      amount: Value(amount),
      note: Value(note),
    );
  }

  factory SpendingTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SpendingTableData(
      id: serializer.fromJson<int>(json['id']),
      amount: serializer.fromJson<double>(json['amount']),
      note: serializer.fromJson<String>(json['note']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'amount': serializer.toJson<double>(amount),
      'note': serializer.toJson<String>(note),
    };
  }

  SpendingTableData copyWith({int? id, double? amount, String? note}) =>
      SpendingTableData(
        id: id ?? this.id,
        amount: amount ?? this.amount,
        note: note ?? this.note,
      );
  @override
  String toString() {
    return (StringBuffer('SpendingTableData(')
          ..write('id: $id, ')
          ..write('amount: $amount, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, amount, note);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SpendingTableData &&
          other.id == this.id &&
          other.amount == this.amount &&
          other.note == this.note);
}

class SpendingTableCompanion extends UpdateCompanion<SpendingTableData> {
  final Value<int> id;
  final Value<double> amount;
  final Value<String> note;
  const SpendingTableCompanion({
    this.id = const Value.absent(),
    this.amount = const Value.absent(),
    this.note = const Value.absent(),
  });
  SpendingTableCompanion.insert({
    this.id = const Value.absent(),
    required double amount,
    required String note,
  })  : amount = Value(amount),
        note = Value(note);
  static Insertable<SpendingTableData> custom({
    Expression<int>? id,
    Expression<double>? amount,
    Expression<String>? note,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (amount != null) 'amount': amount,
      if (note != null) 'note': note,
    });
  }

  SpendingTableCompanion copyWith(
      {Value<int>? id, Value<double>? amount, Value<String>? note}) {
    return SpendingTableCompanion(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      note: note ?? this.note,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SpendingTableCompanion(')
          ..write('id: $id, ')
          ..write('amount: $amount, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  _$AppDatabaseManager get managers => _$AppDatabaseManager(this);
  late final $SpendingTableTable spendingTable = $SpendingTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [spendingTable];
}

typedef $$SpendingTableTableInsertCompanionBuilder = SpendingTableCompanion
    Function({
  Value<int> id,
  required double amount,
  required String note,
});
typedef $$SpendingTableTableUpdateCompanionBuilder = SpendingTableCompanion
    Function({
  Value<int> id,
  Value<double> amount,
  Value<String> note,
});

class $$SpendingTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SpendingTableTable,
    SpendingTableData,
    $$SpendingTableTableFilterComposer,
    $$SpendingTableTableOrderingComposer,
    $$SpendingTableTableProcessedTableManager,
    $$SpendingTableTableInsertCompanionBuilder,
    $$SpendingTableTableUpdateCompanionBuilder> {
  $$SpendingTableTableTableManager(_$AppDatabase db, $SpendingTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SpendingTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SpendingTableTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$SpendingTableTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<double> amount = const Value.absent(),
            Value<String> note = const Value.absent(),
          }) =>
              SpendingTableCompanion(
            id: id,
            amount: amount,
            note: note,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required double amount,
            required String note,
          }) =>
              SpendingTableCompanion.insert(
            id: id,
            amount: amount,
            note: note,
          ),
        ));
}

class $$SpendingTableTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $SpendingTableTable,
    SpendingTableData,
    $$SpendingTableTableFilterComposer,
    $$SpendingTableTableOrderingComposer,
    $$SpendingTableTableProcessedTableManager,
    $$SpendingTableTableInsertCompanionBuilder,
    $$SpendingTableTableUpdateCompanionBuilder> {
  $$SpendingTableTableProcessedTableManager(super.$state);
}

class $$SpendingTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $SpendingTableTable> {
  $$SpendingTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get amount => $state.composableBuilder(
      column: $state.table.amount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get note => $state.composableBuilder(
      column: $state.table.note,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$SpendingTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $SpendingTableTable> {
  $$SpendingTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get amount => $state.composableBuilder(
      column: $state.table.amount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get note => $state.composableBuilder(
      column: $state.table.note,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class _$AppDatabaseManager {
  final _$AppDatabase _db;
  _$AppDatabaseManager(this._db);
  $$SpendingTableTableTableManager get spendingTable =>
      $$SpendingTableTableTableManager(_db, _db.spendingTable);
}
