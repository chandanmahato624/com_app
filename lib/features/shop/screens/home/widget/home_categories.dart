import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:com_app/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:com_app/features/shop/screens/sub_category/sub_category.dart';
import 'package:com_app/utils/constants/image_strings.dart';
import 'package:iconsax/iconsax.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        children: [
          TVerticalImageText(
            icon: Iconsax.activity,
            title: 'Department.',
            onTap: () => Get.to(() => const SubcategoriesScreen()),
          ),
          TVerticalImageText(
            icon: Iconsax.activity,
            title: 'Department.',
            onTap: () => Get.to(() => const SubcategoriesScreen()),
          ),
        ],
      ),
    );
  }
}
