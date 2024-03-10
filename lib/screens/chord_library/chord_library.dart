import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChordLibraryScreen extends StatelessWidget {
  const ChordLibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coming Soon'),
      ),
      body: const Center(
        child: Text(
          'Coming Soon!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
