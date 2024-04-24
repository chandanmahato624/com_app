import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:com_app/features/personalization/screens/settings/settings.dart';
import 'package:com_app/features/shop/screens/home/home.dart';
import 'package:com_app/features/shop/screens/store/store.dart';
import 'package:com_app/features/shop/screens/wishlist/wishlist.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Iconsax.add_square), label: 'Complain'),
              NavigationDestination(
                  icon: Icon(Iconsax.activity), label: 'Activity'),
              NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
            ]),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const Store(),
    const FavouriteScreen(),
    const SettingsScreen(),
  ];
}
