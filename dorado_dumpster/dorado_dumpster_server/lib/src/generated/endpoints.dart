/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/dumpsters_endpoint.dart' as _i2;
import 'package:dorado_dumpster_server/src/generated/dumpster.dart' as _i3;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'dumpsters': _i2.DumpstersEndpoint()
        ..initialize(
          server,
          'dumpsters',
          null,
        )
    };
    connectors['dumpsters'] = _i1.EndpointConnector(
      name: 'dumpsters',
      endpoint: endpoints['dumpsters']!,
      methodConnectors: {
        'getAllDumpsters': _i1.MethodConnector(
          name: 'getAllDumpsters',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['dumpsters'] as _i2.DumpstersEndpoint)
                  .getAllDumpsters(session),
        ),
        'createDumpster': _i1.MethodConnector(
          name: 'createDumpster',
          params: {
            'dumpster': _i1.ParameterDescription(
              name: 'dumpster',
              type: _i1.getType<_i3.Dumpster>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['dumpsters'] as _i2.DumpstersEndpoint).createDumpster(
            session,
            params['dumpster'],
          ),
        ),
      },
    );
  }
}
