import 'package:e_shopping/features/personalization/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_shopping/features/personalization/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_shopping/features/personalization/screens/product_details/widgets/rating_share.dart';
import 'package:e_shopping/utils/constans/sizes.dart';
import 'package:e_shopping/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            const TProductImageSlider(),


            /// 2 - Product Details
            Padding(
              padding: const EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// - Rating & Share
                  TRatingAndShare(),

                  /// - Price, Title, Stack, & Brand
                  TProductMetaData(),
                  
                  /// -- Attributes
                  /// -- Checkout Button
                  /// - description
                  /// - Reviews
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
