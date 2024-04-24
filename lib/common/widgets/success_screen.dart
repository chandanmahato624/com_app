import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:com_app/common/styles/spacing_styles.dart';
import 'package:com_app/utils/constants/sizes.dart';
import 'package:com_app/utils/constants/text_strings.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});

  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBerHeight * 2,
          child: Column(children: [
            Lottie.asset(image, width: MediaQuery.of(context).size.width * 0.6),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            ///Title and subtitle
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: TSizes.spaceBtwSections),

            ///Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressed,
                child: const Text(TTexts.tContinue),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
