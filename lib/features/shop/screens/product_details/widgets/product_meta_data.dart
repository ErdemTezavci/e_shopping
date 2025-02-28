import 'package:e_shopping/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_shopping/common/widgets/images/t_circular.image.dart';
import 'package:e_shopping/common/widgets/products.cart/product_price_text.dart';
import 'package:e_shopping/common/widgets/texts/product_title_text.dart';
import 'package:e_shopping/common/widgets/texts/t_brand_title_text_with_%20verified_icon.dart';
import 'package:e_shopping/utils/constans/colors.dart';
import 'package:e_shopping/utils/constans/enums.dart';
import 'package:e_shopping/utils/constans/image_strings.dart';
import 'package:e_shopping/utils/constans/sizes.dart';
import 'package:e_shopping/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            /// Sale Tag
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.black)),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),

            /// Price
            Text('\$250', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText(price: '175', isLarge: true,),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),

        /// Title
        const TProductTitleText(title: 'Green Nike Sport Shirt'),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),
        
        /// Stack Status
        Row(
          children: [
            const TProductTitleText(title: 'Status'),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwItems / 1.5),
        
        /// Brand
       Row(
          children: [
            TCircularImage(
              image: TImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? TColors.white : TColors.black,
            ),
            const TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.medium,),
          ],
        )

      ],
    );
  }
}