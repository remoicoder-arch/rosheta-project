import 'package:flutter/material.dart';
import '../../core/resources/height_manager.dart';
import '../../core/resources/padding_manager.dart';
import '../../core/resources/routes_manager.dart';
import '../../core/resources/strings_manager.dart';
import '../../widgets/for_login/app_button.dart';
import '../../widgets/for_login/intro_text_section.dart';
import '../../widgets/for_login/logo_section.dart';

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

            const LogoSection(),

            const SizedBox(height: HeightManager.h30),

            const IntroTextSection(),

            const SizedBox(height: HeightManager.h40),

            AppButton(
              text: StringsManager.login,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RoutesNameManager.login.routeName,
                );
              },
            ),

            const SizedBox(height: HeightManager.h15),

            AppButton(
              text: StringsManager.signUp,
              isPrimary: false,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RoutesNameManager.signUp.routeName,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}