import 'package:flutter/material.dart';

import '../../core/resources/colors_manager.dart';
import '../../core/resources/padding_manager.dart';
import '../../core/resources/strings_manager.dart';

class SkipButton extends StatelessWidget {
  final VoidCallback onTap;

  const SkipButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PaddingManager.p16),
        child: GestureDetector(
          onTap: onTap,
          child: const Text(
            StringsManager.skip,
            style: TextStyle(
              color: ColorManager.primary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}