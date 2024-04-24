import 'package:flutter/material.dart';
import 'package:com_app/common/widgets/appbar/appbar.dart';
import 'package:com_app/features/personalization/screens/product_details/widget/overall_product_rating.dart';
import 'package:com_app/features/personalization/screens/product_details/widget/rating_indicator.dart';
import 'package:com_app/features/personalization/screens/product_details/widget/user_review_card.dart';
import 'package:com_app/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// ---App bar
      appBar: const TAppBar(
        title: Text(
          'Reviews & Rattings',
        ),
        showBackArrow: true,
      ),

      ///--- Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  'Ratting and reviews are verified and are from pepole who use the same type of the device that you use.'),
              const SizedBox(height: TSizes.spaceBtwItems),

              /// Overall Product Rattings
              TOverallProductRatting(),
              TRatingBarIndicator(
                rating: 3.5,
              ),
              Text("12,611", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// User review list
              UserReviewCard(),
              UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
