import 'package:e_shopping/common/widgets/image_texts_widgets/vertical_image_text.dart';
import 'package:e_shopping/features/shop/screens/sub_categories/sub_categories.dart';
import 'package:e_shopping/utils/constans/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(image: TImages.shoeIcon, title: 'Shoes', onTap: () => Get.to(const SubCategoriesScreen()));
        },
      ),
    );
  }
}