import 'package:flutter/material.dart';
import 'package:brightstart/assets/colors.dart';

class UtilsButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double? height;

  const UtilsButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: 350,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:
              onPressed == null
                  ? UtilsColors.primary.withOpacity(0.4)
                  : UtilsColors.primary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
