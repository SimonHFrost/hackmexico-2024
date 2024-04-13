/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Dumpster extends _i1.SerializableEntity {
  Dumpster._({
    this.id,
    required this.latitude,
    required this.longitude,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  double latitude;

  double longitude;

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
