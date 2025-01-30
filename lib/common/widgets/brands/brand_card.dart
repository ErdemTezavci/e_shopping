import 'package:e_shopping/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_shopping/common/widgets/images/t_circular.image.dart';
import 'package:e_shopping/common/widgets/texts/t_brand_title_text_with_%20verified_icon.dart';
import 'package:e_shopping/utils/constans/colors.dart';
import 'package:e_shopping/utils/constans/enums.dart';
import 'package:e_shopping/utils/constans/image_strings.dart';
import 'package:e_shopping/utils/constans/sizes.dart';
import 'package:e_shopping/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key, 
    required this.showBorder, 
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onTap,
    /// Container Design
    child: TRoundedContainer(
      padding: const EdgeInsets.all(TSizes.sm),
      showBorder: showBorder,
      backgroundColor: Colors.transparent,
      child: Row(
        children: [
          /// -- Icon 
          Flexible(
            child: TCircularImage(
              isNetworkImage: false,
              image: TImages.clothIcon,
              backgroundColor: Colors.transparent,
              overlayColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.black,
            ),
          ),
          const SizedBox(width: TSizes.spaceBtwItems / 2),
    
          /// -- Text
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TBrandTitleWithVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.large),
                Text(
                  '256 products',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
  }
}
