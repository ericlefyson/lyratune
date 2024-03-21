import 'package:flutter/material.dart';
import 'package:lyratune/utils/styles.dart';

class SoonScreen extends StatelessWidget {
  const SoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(child: Image.asset(AppImages.logos3)),
        const SizedBox(height: 20),
        const Text('em breve',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold)),
      ]),
    );
  }
}
