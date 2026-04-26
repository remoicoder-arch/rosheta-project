import 'package:flutter/material.dart';

import '../../view/login/login_intro_page.dart';
import '../../view/onboarding/onboarding_page.dart';
import '../../view/splash/splash_page.dart';

class RoutesNameManager {
  static const splash = _Route("/splash");
  static const onboarding = _Route("/onboarding");
  static const home = _Route("/home");
  static const login = _Route("/login");
  static const doctorFind = _Route("/doctorFind");
  static const doctorDetails = _Route("/doctorDetails");
  static const pharmacy = _Route("/pharmacy");
  static const profile = _Route("/profile");
  static const password = _Route("/password");
  static const loginIntro = _Route("/loginIntro");
  static const signUp = _Route("/signUp");
}

class _Route {
  final String routeName;
  const _Route(this.routeName);
}

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  late Widget page;

  if (settings.name == RoutesNameManager.splash.routeName) {
    page = const SplashPage();

  } else if (settings.name == RoutesNameManager.onboarding.routeName) {
    page = const OnboardingPage();

  } else if (settings.name == RoutesNameManager.home.routeName) {
    page = const Scaffold();

  } else if (settings.name == RoutesNameManager.login.routeName) {
    page = const Scaffold();

  } else if (settings.name == RoutesNameManager.doctorFind.routeName) {
    page = const Scaffold();

  } else if (settings.name == RoutesNameManager.doctorDetails.routeName) {
    page = const Scaffold();

  } else if (settings.name == RoutesNameManager.pharmacy.routeName) {
    page = const Scaffold();

  } else if (settings.name == RoutesNameManager.profile.routeName) {
    page = const Scaffold();

  } else if (settings.name == RoutesNameManager.password.routeName) {
    page = const Scaffold();

  } else if (settings.name == RoutesNameManager.loginIntro.routeName) {
    page = const LoginIntroPage();
  }
  else if (settings.name == RoutesNameManager.signUp.routeName) {
    page = const Scaffold();
  }
  else {
    page = const Scaffold(
      body: Center(child: Text("Unknown Route")),
    );
  }

  return MaterialPageRoute(
    builder: (context) => page,
    settings: settings,
  );
}