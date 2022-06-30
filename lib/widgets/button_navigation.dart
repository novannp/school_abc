import 'package:flutter/material.dart';

class ButtonNavigation extends StatelessWidget {
  final Widget iconImage;
  final Color backgroundColor;
  final double borderRadius;
  final Function() onPressed;
  const ButtonNavigation(
      {Key? key,
      required this.iconImage,
      required this.backgroundColor,
      required this.borderRadius,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: backgroundColor,
      ),
      child: IconButton(
        onPressed: onPressed,
        padding: const EdgeInsets.all(11),
        icon: iconImage,
      ),
    );
  }
}
