import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()

class KeyFinderScreen extends StatelessWidget {
  const KeyFinderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Key Finder'),
      ),
      body: const Center(
        child: Text('This is the Route Page'),
      ),
    );
  }
}
