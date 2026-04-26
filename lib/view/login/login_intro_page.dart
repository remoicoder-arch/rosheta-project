import 'package:flutter/material.dart';
import 'package:rosheta/core/resources/width_manager.dart';
import '../../core/resources/assets.dart';
import '../../core/resources/colors_manager.dart';
import '../../core/resources/font_size.dart';
import '../../core/resources/height_manager.dart';
import '../../core/resources/padding_manager.dart';
import '../../core/resources/strings_manager.dart';
import '../../core/resources/routes_manager.dart';

class LoginIntroPage extends StatelessWidget {
  const LoginIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PaddingManager.p30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset(
              AssetsManager.rosheta,
                width: WidthManager.w220,
            ),

            const SizedBox(height: HeightManager.h30),

            const Text(
                StringsManager.getStarted,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: FontSize.f20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: HeightManager.h10),

            const Text(
              StringsManager.LoginToEnjoy,
                textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: FontSize.f14,
                height: HeightManager.h1,
                color: Colors.black54,
              ),
            ),

            const SizedBox(height: HeightManager.h40),

            InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RoutesNameManager.login.routeName,
                );
              },
              child: Container(
                width: double.infinity,
                height: HeightManager.h50,
                decoration: BoxDecoration(
                  color: ColorManager.primary,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    StringsManager.login,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: FontSize.f16,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: HeightManager.h15),

            /// 🔥 زرار Sign Up
            InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RoutesNameManager.signUp.routeName,
                );
              },
              child: Container(
                width: double.infinity,
                height: HeightManager.h50,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorManager.primary),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text(
                    StringsManager.signUp,
                    style: TextStyle(
                      color: ColorManager.primary,
                      fontSize: FontSize.f16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}