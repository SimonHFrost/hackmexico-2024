import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class DumpstersEndpoint extends Endpoint {
  Future<List<Dumpster>> getAllDumpsters(Session session) async {
    return await Dumpster.db.find(
      session,
      orderBy: (p0) => p0.id,
    );
  }

  Future<void> createDumpster(Session session, Dumpster dumpster) async {
    await Dumpster.db.insertRow(session, dumpster);
  }
}
