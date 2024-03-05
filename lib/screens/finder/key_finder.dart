import 'package:flutter/material.dart';
import 'package:key_finder/components/custom_button.dart';

class KeyFinder extends StatelessWidget {
  const KeyFinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButtom(
          name: 'Ouvir melodia',
          icon: Icons.hearing,
        ),
        SizedBox(
          height: 20,
        ),
        CustomButtom(
          name: 'Analisar arquivo',
          icon: Icons.hearing,
        )
      ],
    );
  }
}
