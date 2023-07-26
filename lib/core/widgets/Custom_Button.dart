import 'package:bookly_app/core/utils/style.dart';
import 'package:flutter/material.dart';

class Custom_button extends StatelessWidget {
  const Custom_button({
    super.key,
    this.borderRadius,
    required this.TextColor,
    required this.BackgroundColor,
    required this.text,
    this.fontSize,
    required this.onPressed,
  });
  final BorderRadius? borderRadius;
  final Color TextColor;
  final Color BackgroundColor;
  final String text;
  final double? fontSize;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: BackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: Style.titleMedium18.copyWith(
            color: TextColor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
