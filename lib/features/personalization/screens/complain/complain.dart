import 'package:com_app/features/personalization/screens/address/widget/add_new_address.dart';
import 'package:com_app/features/personalization/screens/complain_form/complain_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:com_app/common/widgets/appbar/appbar.dart';
import 'package:com_app/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:com_app/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:com_app/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:com_app/common/widgets/texts/section_heading.dart';
import 'package:com_app/data/repositories/authentication_repo.dart';
import 'package:com_app/features/personalization/screens/address/address.dart';
import 'package:com_app/features/personalization/screens/profile/widgets/profile.dart';
import 'package:com_app/features/shop/screens/order/order.dart';
import 'package:com_app/utils/constants/colors.dart';
import 'package:com_app/utils/constants/sizes.dart';

class ComplainScreen extends StatelessWidget {
  const ComplainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthenticationRepository());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  const TAppBar(title: Text('')),

                  /// User profile card
                  TUserProfileTile(
                      onPressed: () => Get.to(() => const ProfileScreen())),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

            ///-------- Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  /// ----Account Settings:
                  const TSectionHeading(
                      title: 'All Complains', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),
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
                  const TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'Need Cleneer',
                    subTitle:
                        'This features currently not available. We are working in this features.',
                    //onTap: () {},
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Comming Soon!',
                    subTitle:
                        'This features currently not available. We are working in this features.',
                    //onTap: () {},
                  ),
                  const TSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Take Photo',
                    subTitle:
                        'This features currently not available. We are working in this features.',
                    //onTap: () {},
                  ),

                  /// Logout button
                  // const SizedBox(height: TSizes.spaceBtwSections),
                  // SizedBox(
                  //   width: double.infinity,
                  //   child: OutlinedButton(
                  //       onPressed: () => controller.logout(),
                  //       child: const Text('Logout')),
                  // ),
                  // const SizedBox(height: TSizes.spaceBtwSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
