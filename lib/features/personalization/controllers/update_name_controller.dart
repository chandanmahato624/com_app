import 'package:com_app/data/repositories/user/user_repository.dart';
import 'package:com_app/features/authentication/Networks/network_manager.dart';
import 'package:com_app/features/personalization/controllers/user_controller.dart';
import 'package:com_app/features/personalization/screens/profile/widgets/profile.dart';
import 'package:com_app/utils/constants/image_strings.dart';
import 'package:com_app/utils/popups/full_screen_loader.dart';
import 'package:com_app/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());
  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();

  /// init user data when home screen appears
  @override
  void onInit() {
    initialzeNames();
    super.onInit();
  }

  /// Featch user record
  Future<void> initialzeNames() async {
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }

  Future<void> updateUserName() async {
    try {
      // Start loading
      TFullScreenLoader.openLoadingDialog(
          'We are updating your information....', TImages.lodingIllustration);

      // cHeck internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form validation
      if (!updateUserNameFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // update users first and last names in the firebase firestore
      Map<String, dynamic> name = {
        'FirstName': firstName.text.trim(),
        'LastName': lastName.text.trim()
      };
      await userRepository.updateSingleField(name);

      // Update the RX user value
      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = lastName.text.trim();

      // Remove loader
      TFullScreenLoader.stopLoading();

      // Show sucess message
      Tloaders.successSnackBar(
          message: 'You name has been updated.', title: 'Congratulation');

      // Move to privous screen
      Get.off(() => const ProfileScreen());
    } catch (e) {
      TFullScreenLoader.stopLoading();
      Tloaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
