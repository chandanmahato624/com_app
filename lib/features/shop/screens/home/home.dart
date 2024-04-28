// ignore_for_file: unnecessary_const

import 'package:com_app/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:com_app/features/personalization/screens/address/address.dart';
import 'package:com_app/features/personalization/screens/complain_form/complain_form.dart';
import 'package:com_app/features/shop/screens/order/order.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:com_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:com_app/common/widgets/custom_shapes/container/search_container.dart';
import 'package:com_app/common/widgets/layout/grid_layout.dart';
import 'package:com_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:com_app/common/widgets/texts/section_heading.dart';
import 'package:com_app/features/shop/screens/all_products/all_products.dart';
import 'package:com_app/features/shop/screens/home/home_appbar.dart';
import 'package:com_app/features/shop/screens/home/widget/home_categories.dart';
import 'package:com_app/features/shop/screens/home/widget/promo_slider.dart';
import 'package:com_app/utils/constants/image_strings.dart';
import 'package:com_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// --- AppBar ---
                  THomeAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  /// --- SearchBar ---
                  const TSearchContainer(text: 'Search Something'),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  ///Categories sections
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSectionHeading(
                            title: 'Popular things to explore!',
                            showActionButton: false,
                            textColor: Colors.white),
                        const SizedBox(height: TSizes.spaceBtwItems),

                        /// catagories
                        THomeCategories()
                      ],
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            /// Body -- Tutorial
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImages.banner1,
                      TImages.banner2,
                      TImages.banner3
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  const TSectionHeading(
                    title: 'Popular Complain',
                    showActionButton: false,

                    ///onPressed: () => Get.to(() => const AllProducts()),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// Populer complain categories ---
                  TSettingsMenuTile(
                    icon: Iconsax.building_3,
                    title: 'Electricity',
                    subTitle:
                        'Click here for Fan, light, etc related complaints and inquiries ',
                    onTap: () => Get.to(() => const ComplainForm()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.pen_tool,
                    title: 'Carpenter',
                    subTitle:
                        'For door, Bed, chair, window related complain reporting form',
                    onTap: () => Get.to(() => const ComplainForm()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.simcard_2,
                    title: 'Window Glass',
                    subTitle:
                        'Press here if your room window is broken or damaged',
                    onTap: () => Get.to(() => const ComplainForm()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.blur,
                    title: 'Plumbing',
                    subTitle:
                        'Press here for any type of plumbing service complaints',
                    onTap: () => Get.to(() => const ComplainForm()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.square,
                    title: 'Others',
                    subTitle:
                        'Press here for other complaints if your complaint category is not found.',
                    onTap: () => Get.to(() => const ComplainForm()),
                  ),

                  /// Popular product ---
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
