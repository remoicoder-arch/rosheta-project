import 'package:flutter/material.dart';
import '../../../core/resources/assets.dart';
import '../../../core/resources/width_manager.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetsManager.rosheta,
      width: WidthManager.w220,
    );
  }
}