import 'package:e_shopping/common/widgets/login_signup/form_divider.dart';
import 'package:e_shopping/common/widgets/login_signup/social_buttons.dart';
import 'package:e_shopping/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_shopping/utils/constans/sizes.dart';
import 'package:e_shopping/utils/constans/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(TTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              /// Form
              const TSignupForm(),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Divider
              TLoginDivider(dividerText: TTexts.orSignUpWith.capitalize!,),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Social Buttons
              const TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

