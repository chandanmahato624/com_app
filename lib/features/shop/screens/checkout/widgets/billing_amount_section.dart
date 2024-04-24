import 'package:flutter/material.dart';
import 'package:com_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:com_app/common/widgets/texts/section_heading.dart';
import 'package:com_app/utils/constants/colors.dart';
import 'package:com_app/utils/constants/image_strings.dart';
import 'package:com_app/utils/constants/sizes.dart';
import 'package:com_app/utils/helpers/helper_functions.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        TSectionHeading(
            title: 'Payment Method', buttonTitle: 'Change', onPressed: () {}),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? TColors.light : TColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: const Image(
                  image: AssetImage(TImages.paypal), fit: BoxFit.contain),
            ),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        )
      ],
    );
  }
}
