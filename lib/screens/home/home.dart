import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lyratune/components/soon_screen.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Theme.of(context);
    return const SoonScreen();
  }
}
