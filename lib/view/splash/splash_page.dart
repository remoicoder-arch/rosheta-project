import 'dart:async';
import 'package:flutter/material.dart';
import 'package:rosheta/core/resources/assets.dart';
import '../../core/resources/colors_manager.dart';
import '../../core/resources/height_manager.dart';
import '../../core/resources/routes_manager.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
        context,
        RoutesNameManager.onboarding.routeName,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
               AssetsManager.rosheta,
              height: HeightManager.h200,
            ),


          ],
        ),
      ),
    );
  }
}