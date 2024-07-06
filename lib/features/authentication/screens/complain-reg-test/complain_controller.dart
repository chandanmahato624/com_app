import 'package:com_app/common/widgets/success_screen.dart';
import 'package:com_app/features/authentication/screens/complain-reg-test/complain_model.dart';
import 'package:com_app/features/authentication/screens/complain-reg-test/complain_repo.dart';
import 'package:com_app/utils/constants/text_strings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:com_app/data/repositories/authentication_repo.dart';
import 'package:com_app/data/repositories/user/user_model.dart';
import 'package:com_app/data/repositories/user/user_repository.dart';
import 'package:com_app/features/authentication/Networks/network_manager.dart';
import 'package:com_app/features/authentication/screens/signup/verify_email.dart';
import 'package:com_app/utils/constants/image_strings.dart';
import 'package:com_app/utils/popups/full_screen_loader.dart';
import 'package:com_app/utils/popups/loaders.dart';

class ComplainController extends GetxController {
  static ComplainController get instance => Get.find();

  /// Variable
  final complain = TextEditingController();
  final fullName = TextEditingController();
  final hostelName = TextEditingController();
  final phoneNumber = TextEditingController();
  final roomNo = TextEditingController();
  GlobalKey<FormState> complainFormKey = GlobalKey<FormState>();

  /// SIGNUP

  /// SIGNUP
  void singup() async {
    try {
      //Start loading
      TFullScreenLoader.openLoadingDialog(
          'We are processing your information...', TImages.lodingIllustration);

      // check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        // Remove loder
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form validation
      if (!complainFormKey.currentState!.validate()) {
        // Remove loder
        TFullScreenLoader.stopLoading();
        return;
      }

      // Register user in firebase Authentication and save user data in firebase
      // final userCredential = await AuthenticationRepository.instance
      //     .registerWithEmailAndPassword();

      // Save Authenticated user data in the firebase firestore-----
      final newComplain = ComplainModel(
        complain: complain.text.trim(),
        fullName: fullName.text.trim(),
        hostelName: hostelName.text.trim(),
        roomNo: roomNo.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
      );

      final userRepository = Get.put(ComplainRepository());
      await userRepository.saveUserRecord(newComplain);

      // // Remove loder
      // TFullScreenLoader.stopLoading();

      // show sucess message
      Tloaders.successSnackBar(
          title: 'congertulation',
          message:
              'Your compalind has been registerd! continew to home screen.');

      // Move to verify Email Screen
      Get.to(
        () => SuccessScreen(
          image: TImages.successIllustration,
          title: TTexts.yourComplainCreatedTitle,
          subtitle: TTexts.yourComplainCreatedSubTitle,
          onPressed: () => AuthenticationRepository.instance.screenRedirect(),
        ),
      );
    } catch (e) {
      // remove loader
      TFullScreenLoader.stopLoading();
      Tloaders.errorSnackBar(title: 'On Snap!', message: e.toString());
    }
  }

  //----------28.32
}
