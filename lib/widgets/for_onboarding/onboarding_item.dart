import 'package:flutter/material.dart';

import '../../core/resources/colors_manager.dart';
import '../../core/resources/font_size.dart';
import '../../core/resources/height_manager.dart';
import '../../core/resources/padding_manager.dart';

class OnboardingItem extends StatelessWidget {
  final String image;
  final String text;

  const OnboardingItem({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: HeightManager.h220),

        const SizedBox(height: HeightManager.h30),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: PaddingManager.p30),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: PaddingManager.p16,
              vertical: PaddingManager.p14,
            ),
            decoration: BoxDecoration(
              color: ColorManager.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: FontSize.f13,
                height: 1.6,
                color: Colors.black87,
              ),
            ),
          ),
        ),
      ],
    );
  }
}