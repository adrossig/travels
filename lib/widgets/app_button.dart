import 'package:flutter/material.dart';
import 'package:travel/misc/colors.dart';
import 'package:travel/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  final Color backgroundColor;
  final Color borderColor;
  double size;
  bool? isIcon;

  AppButton(
      {Key? key,
      this.text = 'Hi',
      this.icon,
      this.isIcon = false,
      required this.size,
      required this.color,
      required this.backgroundColor,
      required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: isIcon == false
          ? Center(child: AppText(text: text!, color: color))
          : Center(child: Icon(icon, color: color)),
    );
  }
}
