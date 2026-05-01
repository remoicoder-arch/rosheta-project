import 'package:flutter/material.dart';
import '../../core/resources/colors_manager.dart';
import '../../core/resources/font_size.dart';
import '../../core/resources/height_manager.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isPrimary;

  const AppButton({
    super.key,
    required this.text,
    required this.onTap,
    this.isPrimary = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: HeightManager.h50,
        decoration: BoxDecoration(
          color: isPrimary ? ColorManager.primary : Colors.transparent,
          border: Border.all(
            color: ColorManager.primary,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isPrimary ? Colors.white : ColorManager.primary,
              fontSize: FontSize.f16,
            ),
          ),
        ),
      ),
    );
  }
}