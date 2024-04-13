import 'dart:async';

import 'package:dorado_dumpster_client/dorado_dumpster_client.dart';
import 'package:dorado_dumpster_flutter/add_dumpster_page.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.
var client = Client('http://$localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dorado Dumpster',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Dorado Dumpster'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  List<Dumpster>? _dumpsters;
  Exception? _connectionException;

  final Map<String, Marker> _markers = {};

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  void initState() {
    super.initState();

    _loadDumpsters();
  }

  Future<void> _loadDumpsters() async {
    try {
      final dumpsters = await client.dumpsters.getAllDumpsters();
      setState(() {
        _dumpsters = dumpsters;
        _connectionException = null;

        for (final dumpster in dumpsters) {
          if (dumpster.id != null) {
            final id = dumpster.id.toString();
            _markers[id] = Marker(
              markerId: MarkerId(id),
              position: LatLng(dumpster.latitude, dumpster.longitude),
            );
          }
        }
      });
    } on Exception catch (e) {
      _dumpsters = null;
      _connectionException = e;
    }
  }

  Future<void> _createDumpster(Dumpster dumpster) async {
    try {
      await client.dumpsters.createDumpster(dumpster);
      await _loadDumpsters();
      await _goToLocation(dumpster.latitude, dumpster.longitude);
    } on Exception catch (e) {
      _dumpsters = null;
      _connectionException = e;
    }
  }

  Future<void> _goToLocation(double latitude, double longitude) async {
    final controller = await _controller.future;
    final cameraPosition = CameraPosition(
      target: LatLng(latitude, longitude),
      zoom: 10.0,
    );

    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }

  Future<void> _navigate(BuildContext context) async {
    final route = AddDumpsterPage.route();

    final maybeDumpster = await Navigator.of(context).push(route);

    if (maybeDumpster != null) {
      _createDumpster(maybeDumpster);
    }
  }

  @override
  Widget build(BuildContext context) {
    final dumpsters = _dumpsters;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigate(context);
        },
        child: const Icon(Icons.add),
      ),
      body: Builder(builder: (context) {
        return GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (controller) {
            _controller.complete(controller);
          },
          markers: _markers.values.toSet(),
        );
      }),
    );
  }
}
