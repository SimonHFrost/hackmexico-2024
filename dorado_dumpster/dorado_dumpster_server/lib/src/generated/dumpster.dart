/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Dumpster extends _i1.TableRow {
  Dumpster._({
    int? id,
    required this.latitude,
    required this.longitude,
  }) : super(id);

  factory Dumpster({
    int? id,
    required double latitude,
    required double longitude,
  }) = _DumpsterImpl;

  factory Dumpster.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Dumpster(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      latitude: serializationManager
          .deserialize<double>(jsonSerialization['latitude']),
      longitude: serializationManager
          .deserialize<double>(jsonSerialization['longitude']),
    );
  }

  static final t = DumpsterTable();

  static const db = DumpsterRepository._();

  double latitude;

  double longitude;

  @override
  _i1.Table get table => t;

  Dumpster copyWith({
    int? id,
    double? latitude,
    double? longitude,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'latitude':
        latitude = value;
        return;
      case 'longitude':
        longitude = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Dumpster>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DumpsterTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Dumpster>(
      where: where != null ? where(Dumpster.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Dumpster?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DumpsterTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Dumpster>(
      where: where != null ? where(Dumpster.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Dumpster?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Dumpster>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DumpsterTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Dumpster>(
      where: where(Dumpster.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Dumpster row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Dumpster row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Dumpster row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DumpsterTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Dumpster>(
      where: where != null ? where(Dumpster.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static DumpsterInclude include() {
    return DumpsterInclude._();
  }

  static DumpsterIncludeList includeList({
    _i1.WhereExpressionBuilder<DumpsterTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DumpsterTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DumpsterTable>? orderByList,
    DumpsterInclude? include,
  }) {
    return DumpsterIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Dumpster.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Dumpster.t),
      include: include,
    );
  }
}

class _Undefined {}

class _DumpsterImpl extends Dumpster {
  _DumpsterImpl({
    int? id,
    required double latitude,
    required double longitude,
  }) : super._(
          id: id,
          latitude: latitude,
          longitude: longitude,
        );

  @override
  Dumpster copyWith({
    Object? id = _Undefined,
    double? latitude,
    double? longitude,
  }) {
    return Dumpster(
      id: id is int? ? id : this.id,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }
}

class DumpsterTable extends _i1.Table {
  DumpsterTable({super.tableRelation}) : super(tableName: 'dumpster') {
    latitude = _i1.ColumnDouble(
      'latitude',
      this,
    );
    longitude = _i1.ColumnDouble(
      'longitude',
      this,
    );
  }

  late final _i1.ColumnDouble latitude;

  late final _i1.ColumnDouble longitude;

  @override
  List<_i1.Column> get columns => [
        id,
        latitude,
        longitude,
      ];
}

@Deprecated('Use DumpsterTable.t instead.')
DumpsterTable tDumpster = DumpsterTable();

class DumpsterInclude extends _i1.IncludeObject {
  DumpsterInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table get table => Dumpster.t;
}

class DumpsterIncludeList extends _i1.IncludeList {
  DumpsterIncludeList._({
    _i1.WhereExpressionBuilder<DumpsterTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Dumpster.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Dumpster.t;
}

class DumpsterRepository {
  const DumpsterRepository._();

  Future<List<Dumpster>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DumpsterTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<DumpsterTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DumpsterTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Dumpster>(
      where: where?.call(Dumpster.t),
      orderBy: orderBy?.call(Dumpster.t),
      orderByList: orderByList?.call(Dumpster.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Dumpster?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DumpsterTable>? where,
    int? offset,
    _i1.OrderByBuilder<DumpsterTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<DumpsterTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findFirstRow<Dumpster>(
      where: where?.call(Dumpster.t),
      orderBy: orderBy?.call(Dumpster.t),
      orderByList: orderByList?.call(Dumpster.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Dumpster?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Dumpster>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Dumpster>> insert(
    _i1.Session session,
    List<Dumpster> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Dumpster>(
      rows,
      transaction: transaction,
    );
  }

  Future<Dumpster> insertRow(
    _i1.Session session,
    Dumpster row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Dumpster>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Dumpster>> update(
    _i1.Session session,
    List<Dumpster> rows, {
    _i1.ColumnSelections<DumpsterTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Dumpster>(
      rows,
      columns: columns?.call(Dumpster.t),
      transaction: transaction,
    );
  }

  Future<Dumpster> updateRow(
    _i1.Session session,
    Dumpster row, {
    _i1.ColumnSelections<DumpsterTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Dumpster>(
      row,
      columns: columns?.call(Dumpster.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Dumpster> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Dumpster>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Dumpster row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Dumpster>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<DumpsterTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Dumpster>(
      where: where(Dumpster.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<DumpsterTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Dumpster>(
      where: where?.call(Dumpster.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
