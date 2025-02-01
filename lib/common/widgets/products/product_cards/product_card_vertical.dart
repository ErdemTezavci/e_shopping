import 'package:e_shopping/common/styles/shadows.dart';
import 'package:e_shopping/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_shopping/common/widgets/icons/t_circular_icon.dart';
import 'package:e_shopping/common/widgets/images/t_rounded_image.dart';
import 'package:e_shopping/common/widgets/products/cart/product_price_text.dart';
import 'package:e_shopping/common/widgets/texts/product_title_text.dart';
import 'package:e_shopping/common/widgets/texts/t_brand_title_text_with_%20verified_icon.dart';
import 'package:e_shopping/features/shop/screens/product_details/product_details.dart';
import 'package:e_shopping/utils/constans/colors.dart';
import 'package:e_shopping/utils/constans/image_strings.dart';
import 'package:e_shopping/utils/constans/sizes.dart';
import 'package:e_shopping/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    /// Container withside paddings, color, edges, radius and shadow.
    return GestureDetector(
      onTap: () => Get.to(() => const  ProductDetail()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            boxShadow: [TShadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(TSizes.productImageRadius),
            color: dark ? TColors.darkerGrey : TColors.white),
        child: Column(
          children: [
            ///Thumbnail, Wishlist Button, Discount Tag
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.md),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  /// -- Thumbnail Image
                  const TRoundedImage(
                      imageUrl: TImages.productImage1, applyImageRadius: true),

                  /// -- Sale Tag
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '%25',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),

                  /// -- Favorite Icon Button
                  const Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(
                          icon: Iconsax.heart5, color: Colors.red)),
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems / 2),

            /// -- Details
            const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                      title: 'Green Nike Air Shoes', smallSize: true),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  TBrandTitleWithVerifiedIcon(title: 'Nike',),
                ],
              ),
            ),

            // TODO: Add Spacer() here to keep the height of each Box same in case 1 or 2 lines of Heading
                  const Spacer(),

                  /// Price Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// Price
                      const Padding(
                        padding: EdgeInsets.only(left: TSizes.sm),
                        child: TProductPriceText(price: '35.0'),
                      ),

                      /// Add to Card Button
                      Container(
                        decoration: const BoxDecoration(
                          color: TColors.dark,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(TSizes.productImageRadius)),
                        ),
                        child: const SizedBox(
                            width: TSizes.iconLg * 1.2,
                            height: TSizes.iconLg * 1.2,
                            child: Center(
                                child:
                                    Icon(Iconsax.add, color: TColors.white))),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}


