import 'package:e_shopping/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_shopping/common/widgets/texts/section_heading.dart';
import 'package:e_shopping/utils/constans/colors.dart';
import 'package:e_shopping/utils/constans/image_strings.dart';
import 'package:e_shopping/utils/constans/sizes.dart';
import 'package:e_shopping/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TBillingPaymentSection extends StatelessWidget {
  const TBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: () {}),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? TColors.light : TColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: Image.asset(TImages.paypal, fit: BoxFit.contain),
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}