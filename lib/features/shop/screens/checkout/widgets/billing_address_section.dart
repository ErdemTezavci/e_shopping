import 'package:e_shopping/common/widgets/texts/section_heading.dart';
import 'package:e_shopping/utils/constans/sizes.dart';
import 'package:flutter/material.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: () {}),
        Text('Erdem Tezavci', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        
        Row(
          children: [
           const Icon(Icons.phone, color: Colors.grey , size: 16),
           const SizedBox(width: TSizes.spaceBtwItems),
           Text('+90 555 555 55 55', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 2),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           const Icon(Icons.location_history, color: Colors.grey , size: 16),
           const SizedBox(width: TSizes.spaceBtwItems),
           Expanded(child: Text('Istanbul, Turkey', style: Theme.of(context).textTheme.bodyMedium, softWrap: true,)),
          ],
        ),
      ],
    );
  }
}

