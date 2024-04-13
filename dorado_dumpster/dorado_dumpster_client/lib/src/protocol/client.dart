/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:dorado_dumpster_client/src/protocol/dumpster.dart' as _i3;
import 'protocol.dart' as _i4;

/// {@category Endpoint}
class EndpointDumpsters extends _i1.EndpointRef {
  EndpointDumpsters(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'dumpsters';

  _i2.Future<List<_i3.Dumpster>> getAllDumpsters() =>
      caller.callServerEndpoint<List<_i3.Dumpster>>(
        'dumpsters',
        'getAllDumpsters',
        {},
      );

  _i2.Future<void> createDumpster(_i3.Dumpster dumpster) =>
      caller.callServerEndpoint<void>(
        'dumpsters',
        'createDumpster',
        {'dumpster': dumpster},
      );
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
  }) : super(
          host,
          _i4.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
        ) {
    dumpsters = EndpointDumpsters(this);
  }

  late final EndpointDumpsters dumpsters;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup =>
      {'dumpsters': dumpsters};

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
