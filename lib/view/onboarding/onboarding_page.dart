import 'package:flutter/material.dart';
import '../../controller/onboarding_controller.dart';
import '../../core/resources/assets.dart';
import '../../core/resources/height_manager.dart';
import '../../core/resources/strings_manager.dart';
import '../../widgets/for_onboarding/buttom_section.dart';
import '../../widgets/for_onboarding/onboarding_item.dart';
import '../../widgets/for_onboarding/skip_button.dart';

class OnboardingModel {
  final String image;
  final String text;

  OnboardingModel({required this.image, required this.text});
}

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final controller = OnboardingController();
  int currentIndex = 0;

  final List<OnboardingModel> pages = [
    OnboardingModel(image: AssetsManager.on1, text: StringsManager.onboarding1),
    OnboardingModel(image: AssetsManager.on2, text: StringsManager.onboarding2),
    OnboardingModel(image: AssetsManager.on3, text: StringsManager.onboarding3),
    OnboardingModel(image: AssetsManager.on4, text: StringsManager.onboarding4),
  ];

  @override
  void dispose() {
    controller.pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          const SizedBox(height: HeightManager.h40),

          SkipButton(
            onTap: () => controller.skip(context),
          ),

          Expanded(
            child: PageView.builder(
              controller: controller.pageController,
              itemCount: pages.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                final page = pages[index];
                return OnboardingItem(
                  image: page.image,
                  text: page.text,
                );
              },
            ),
          ),

          BottomNavigationSection(
            controller: controller.pageController,
            count: pages.length,
            onNext: () {
              controller.nextPage(
                context,
                currentIndex,
                pages.length - 1,
              );
            },
          ),

          const SizedBox(height: HeightManager.h30),
        ],
      ),
    );
  }
}