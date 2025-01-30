import 'package:e_shopping/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_shopping/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_shopping/common/widgets/layouts/grid_layout.dart';
import 'package:e_shopping/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_shopping/common/widgets/texts/section_heading.dart';
import 'package:e_shopping/features/shop/screens/home/widget/home_appbar.dart';
import 'package:e_shopping/features/shop/screens/home/widget/home_categories.dart';
import 'package:e_shopping/features/shop/screens/home/widget/promo_slider.dart';
import 'package:e_shopping/utils/constans/colors.dart';
import 'package:e_shopping/utils/constans/image_strings.dart';
import 'package:e_shopping/utils/constans/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header -- Tutorial
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// --AppBar -- Tutorial [Section # 3]
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// --SearchBar -- Tutorial [Section # 3]
                  TSearchContainer(text: 'Serch in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// --Categories -- Tutorial [Section # 3]
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading
                        TSectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: TColors.white,
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),

                        /// -- Categories
                        THomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body -- Tutorial [Section 3]
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// -- Promo Slider -- Tutorial [Section 3]
                  const TPromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3]),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Header 
                  TSectionHeading(title: 'Popular Products', onPressed: () {},),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// Popular Products -- Tutorial [Section 3]
                  TGridLayout(itemCount: 4, itemBuilder: (_, index) => const TProductCardVertical(),),
                  
                ],
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}


