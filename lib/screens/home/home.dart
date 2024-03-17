import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lyratune/utils/styles.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(AppImages.moon),
          ),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [0.0, 0.95],
            colors: [theme.colorScheme.primary, theme.colorScheme.tertiary],
          ),
        ),
        child: const Center(
          child: Text('Hello, World!'),
        ),
      ),
    );
  }
}
