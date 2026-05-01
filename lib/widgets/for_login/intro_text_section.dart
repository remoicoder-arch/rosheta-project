import 'package:flutter/material.dart';
import '../../core/resources/font_size.dart';
import '../../core/resources/height_manager.dart';
import '../../core/resources/strings_manager.dart';

class IntroTextSection extends StatelessWidget {
  const IntroTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          StringsManager.getStarted,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: FontSize.f20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: HeightManager.h10),
        Text(
          StringsManager.LoginToEnjoy,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: FontSize.f14,
            height: HeightManager.h1,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}