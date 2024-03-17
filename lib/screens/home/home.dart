import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Theme.of(context);
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Text('Hello, World!'),
      ),
    );
  }
}
