import 'package:e_shopping/features/authentication/screens/onboarding/onboarding.dart';
import 'package:e_shopping/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// -- Use this Class to setup themes, initial Bindings, any animations and much more using Material Widget
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}