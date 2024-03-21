import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final double iconSize;
  final Color iconColor;
  final Color backgroundColor;
  final double splashRadius;

  const CircleIconButton({
    required this.icon,
    required this.onPressed,
    this.iconSize = 50,
    this.iconColor = Colors.white,
    this.backgroundColor = const Color.fromARGB(255, 136, 71, 227),
    this.splashRadius = 25,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        iconSize: iconSize,
        color: iconColor,
        splashRadius: splashRadius,
      ),
    );
  }
}
