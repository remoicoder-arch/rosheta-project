import 'package:flutter/material.dart';

class OnboardingController {
  final PageController pageController = PageController();

  void nextPage(BuildContext context, int currentIndex, int lastIndex) {
    if (currentIndex == lastIndex) {
      Navigator.pushReplacementNamed(context, "/loginIntro");
    } else {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  void skip(BuildContext context) {
    Navigator.pushReplacementNamed(context, "/loginIntro");
  }
}