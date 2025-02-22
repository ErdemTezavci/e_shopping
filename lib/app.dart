import 'package:e_shopping/utils/constans/colors.dart';
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
      /// show loader or circular progress indicator meanwhile Authentication Repository is deciding to show relevant screen
      home: const Scaffold(backgroundColor: TColors.primary, body: Center(child: CircularProgressIndicator(color: Colors.white))),
    );
  }
}