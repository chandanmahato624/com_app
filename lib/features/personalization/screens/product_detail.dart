import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:com_app/common/widgets/texts/section_heading.dart';
import 'package:com_app/features/personalization/screens/product_details/bottom_add_tocart_widget.dart';
import 'package:com_app/features/personalization/screens/product_details/product_attributes.dart';
import 'package:com_app/features/personalization/screens/product_details/product_details_image_slider.dart';
import 'package:com_app/features/personalization/screens/product_details/product_meta_data.dart';
import 'package:com_app/features/personalization/screens/product_details/product_reviews.dart';
import 'package:com_app/features/personalization/screens/product_details/ratting_share_widget.dart';
import 'package:com_app/utils/constants/sizes.dart';
import 'package:com_app/utils/helpers/helper_functions.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: const TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// 1 - Product Image Slider
            const TProductImageSlider(),

            /// 2 - Product Details
            Padding(
              padding: const EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  /// ratting and share button
                  TRattingShare(),

                  /// price tag + .......
                  TProductMetaData(),

                  /// Attribute
                  TProductAttributes(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('CheckOut'),
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  /// Descriptions - 26.28
                  const TSectionHeading(
                      title: 'Descriptions', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'A t-shirt, a staple of casual wear, is a versatile garment adorning torsos worldwide. Its simplicity belies its impact, serving as a canvas for self-expression, from graphic designs to witty slogans. Soft cotton embraces skin, offering comfort in various styles and fits. A fashion essential, the humble tee transcends trends, enduring through generations.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  /// Reviews
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TSectionHeading(
                        title: 'Reviews(199)',
                        showActionButton: false,
                      ),
                      IconButton(
                          onPressed: () =>
                              Get.to(() => const ProductReviewsScreen()),
                          icon: const Icon(
                            Iconsax.arrow_right_3,
                            size: 18,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
