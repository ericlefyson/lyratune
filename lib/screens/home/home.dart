import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lyratune/screens/home/audio_list.dart';
import 'package:lyratune/utils/styles.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment(0, 1.5),
                  image: AssetImage(AppImages.moon),
                  fit: BoxFit.contain)),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [AudioList()],
          ),
        ));
  }
}
