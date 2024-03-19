import 'package:flutter/material.dart';
import 'package:lyratune/utils/styles.dart';

enum ButtonType { standard, outline, text }

class CustomButtom extends StatelessWidget {
  final String name;
  final Color color;
  final double size;
  final IconData? icon;
  final ButtonType type;

  const CustomButtom({
    Key? key,
    required this.name,
    this.size = 16,
    this.color = AppColors.primary,
    this.icon,
    this.type = ButtonType.standard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ButtonType.outline:
        return OutlinedButton.icon(
          icon: icon != null ? Icon(icon) : Container(),
          label: Text(name),
          onPressed: () {},
        );
      case ButtonType.text:
        return TextButton.icon(
          icon: icon != null ? Icon(icon) : Container(),
          label: Text(name),
          onPressed: () {},
          style: TextButton.styleFrom(
            textStyle: TextStyle(
              fontSize: size,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      default:
        return ElevatedButton.icon(
          icon: icon != null ? Icon(icon) : Container(),
          label: Text(name),
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            minimumSize: MaterialStateProperty.all(Size(size, size)),
            padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
          ),
        );
    }
  }
}
