import 'dart:html';
import 'dart:math';

import 'package:dorado_dumpster_client/dorado_dumpster_client.dart';
import 'package:flutter/material.dart';

class AddDumpsterPage extends StatelessWidget {
  const AddDumpsterPage({super.key});

  static MaterialPageRoute<Dumpster?> route() => MaterialPageRoute(
        builder: (context) => const AddDumpsterPage(),
      );

  @override
  Widget build(BuildContext context) {
    double generateRandomNegativeDouble(double lowerBound, double upperBound) {
      Random random = Random();
      return lowerBound + (upperBound - lowerBound) * random.nextDouble();
    }

    return Scaffold(
      floatingActionButton: Column(
        children: [
          FloatingActionButton(
            heroTag: 'save',
            onPressed: () {
              final random = Random();
              final latitude = random.nextDouble() * (32.43 + 14.32) - 14.32;
              final longitude = generateRandomNegativeDouble(-118.0, -86.0);
              final dumpster = Dumpster(
                latitude: latitude,
                longitude: longitude,
              );

              Navigator.pop(context, dumpster);
            },
            child: const Icon(Icons.check),
          ),
          FloatingActionButton(
            heroTag: 'close',
            onPressed: () {
              Navigator.pop(context, null);
            },
            child: const Icon(Icons.close),
          ),
        ],
      ),
      body: const Placeholder(),
    );
  }
}
