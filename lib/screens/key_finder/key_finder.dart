import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class KeyFinderScreen extends StatelessWidget {
  const KeyFinderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blue,
              Colors.red,
            ],
          ),
        ),
        child: const Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}
