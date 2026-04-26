import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/resources/assets.dart';
import '../../core/resources/colors_manager.dart';
import '../../core/resources/font_size.dart';
import '../../core/resources/height_manager.dart';
import '../../core/resources/padding_manager.dart';
import '../../core/resources/strings_manager.dart';
import '../../controller/onboarding_controller.dart';
import '../../core/resources/width_manager.dart';

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
    OnboardingModel(
      image: AssetsManager.on1,
      text: StringsManager.onboarding1,

    ),
    OnboardingModel(
      image: AssetsManager.on2,
      text: StringsManager.onboarding2,

    ),
    OnboardingModel(
      image: AssetsManager.on3,
      text: StringsManager.onboarding3,
    ),
    OnboardingModel(
      image: AssetsManager.on4,
      text:StringsManager.onboarding4,
    ),
  ];

  @override
  void dispose() {
    controller.pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isLastPage = currentIndex == pages.length - 1;

    return Scaffold(
      body: Column(
        children: [

          const SizedBox(height: HeightManager.h40),

          /// Skip
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: PaddingManager.p16),
              child: GestureDetector(
                onTap: () => controller.skip(context),
                child: const Text(
                  StringsManager.skip,
                  style: TextStyle(
                    color: ColorManager.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
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

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(page.image, height: HeightManager.h220),

                    const SizedBox(height: HeightManager.h30),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: PaddingManager.p30),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: PaddingManager.p16,
                          vertical: PaddingManager.p14,
                        ),
                        decoration: BoxDecoration(
                          color:  ColorManager.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          page.text,
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
              },
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: PaddingManager.p30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                ///
                SmoothPageIndicator(
                  controller: controller.pageController,
                  count: pages.length,
                  onDotClicked: (index) {
                    controller.pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  },
                  effect:  ExpandingDotsEffect(
                    activeDotColor: ColorManager.primary,
                    dotColor: ColorManager.grey,
                    dotHeight: HeightManager.h8,
                    dotWidth: WidthManager.w8,
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    controller.nextPage(
                      context,
                      currentIndex,
                      pages.length - 1,
                    );
                  },
                  child: const CircleAvatar(
                    backgroundColor: ColorManager.primary,
                    child: Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: HeightManager.h30),
        ],
      ),
    );
  }
}