import 'package:e_shopping/common/widgets/products.cart/product_price_text.dart';
import 'package:e_shopping/common/widgets/products/cart/add_remove_button.dart';
import 'package:e_shopping/common/widgets/products/cart/cart_item.dart';
import 'package:e_shopping/utils/constans/sizes.dart';
import 'package:flutter/material.dart';

class TCartItems extends StatelessWidget {
  const TCartItems({super.key, this.showAddRemoveButton = true});

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
          shrinkWrap: true,
          itemCount: 2,
          separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections),
          itemBuilder: (_, index) {
            return Column(
              children: [
                /// Cart Item
                TCartItem(),
                if(showAddRemoveButton) const SizedBox(height: TSizes.spaceBtwItems),

                /// Add Remove Button Row with total Price
                if(showAddRemoveButton)
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          /// Extra Space
                          SizedBox(width: 70),
                          /// Add Remove Button
                          TProductQuantityWithAddRemoveButton(),
                        ],
                      ),
                      /// product total price
                      TProductPriceText(price: '256'),
                    ],
                  ),
              ],
            );
          },
        );
  }
}