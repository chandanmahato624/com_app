import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:com_app/common/styles/spacing_styles.dart';
import 'package:com_app/common/widgets_login_signup/form_divider.dart';
import 'package:com_app/common/widgets_login_signup/social_buttons.dart';
import 'package:com_app/features/authentication/screens/login/login_form.dart';
import 'package:com_app/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:com_app/features/authentication/screens/signup/signup.dart';
import 'package:com_app/navigation_menu.dart';
import 'package:com_app/utils/constants/image_strings.dart';
import 'package:com_app/utils/constants/sizes.dart';
import 'package:com_app/utils/constants/text_strings.dart';
import 'package:com_app/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBerHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 120,
                    image: AssetImage(
                        dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                  ),
                  Text(TTexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: TSizes.sm),
                  Text(
                    TTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),

              /// Form
              const TLoginForm(),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
