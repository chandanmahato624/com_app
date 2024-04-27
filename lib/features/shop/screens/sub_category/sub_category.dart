import 'package:flutter/material.dart';
import 'package:com_app/common/widgets/appbar/appbar.dart';
import 'package:com_app/common/widgets/images/t_rounded_image.dart';
import 'package:com_app/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:com_app/common/widgets/texts/section_heading.dart';
import 'package:com_app/utils/constants/image_strings.dart';
import 'package:com_app/utils/constants/sizes.dart';

class SubcategoriesScreen extends StatelessWidget {
  const SubcategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Working on this features'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Banner
              const TRoundImage(
                width: double.infinity,
                imageUrl: TImages.banner1,
                applyImageRadius: true,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Sub-categorie------------
              Column(
                children: [
                  /// Heading
                  TSectionHeading(
                      title: 'Comming Soon...',
                      showActionButton: false,
                      onPressed: () {}),
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
/// 4. 32
