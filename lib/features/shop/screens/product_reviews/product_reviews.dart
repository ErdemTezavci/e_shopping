import 'package:e_shopping/common/widgets/appbar/appbar.dart';
import 'package:e_shopping/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_shopping/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:e_shopping/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:e_shopping/utils/constans/sizes.dart';
import 'package:flutter/material.dart';

class TProductReviewsScreen extends StatelessWidget {
  const TProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -- AppBar
      appBar: const TAppBar(title: Text('Reviews & Ratings'), showBackArrow: true,),

      /// -- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Rating and Reviews are verified and are from people who use the same type of device that you use"),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// overall Product Ratings 
              const TOverallProductRating(),
              const TRatingBarIndicator(rating: 3.5),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// User Reviews List
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
