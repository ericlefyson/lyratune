import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class KeyFinderScreen extends StatelessWidget {
  const KeyFinderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text('Hello, World!'),
      ),
    );
  }
}
