import 'package:e_shopping/common/styles/spacing_styles.dart';
import 'package:e_shopping/common/widgets/login_signup/form_divider.dart';
import 'package:e_shopping/common/widgets/login_signup/social_buttons.dart';
import 'package:e_shopping/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_shopping/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_shopping/utils/constans/sizes.dart';
import 'package:e_shopping/utils/constans/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              const TLoginHeader(),

              /// Form
              const TLoginForm(),

              /// Divider
              TLoginDivider(dividerText: TTexts.orSignInWith.capitalize!,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              /// Footer
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}





