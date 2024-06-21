import 'package:com_app/features/authentication/screens/complain-reg-test/complain_controller.dart';
import 'package:com_app/utils/constants/sizes.dart';
import 'package:com_app/utils/helpers/helper_functions.dart';
import 'package:com_app/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class ComplainMainForm extends StatelessWidget {
  const ComplainMainForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = Get.put(ComplainController());
    return Form(
        key: controller.complainFormKey,
        child: Column(
          children: [
            TextFormField(
                controller: controller.fullName,
                validator: (value) =>
                    TValidator.validateEmptyText('First name', value),
                expands: false,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user), labelText: 'Full Name')),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            TextFormField(
                controller: controller.phoneNumber,
                validator: (value) => TValidator.validatePhoneNumber(value),
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.mobile), labelText: 'Phone No')),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            TextFormField(
                controller: controller.hostelName,
                validator: (value) =>
                    TValidator.validateEmptyText('Hostel name', value),
                expands: false,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.building),
                    labelText: 'Hostel Name')),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            TextFormField(
              controller: controller.roomNo,
              validator: (value) =>
                  TValidator.validateEmptyText('Room No', value),
              expands: false,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.code), labelText: 'Room No'),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            TextFormField(
              controller: controller.complain,
              validator: (value) =>
                  TValidator.validateEmptyText('Complain', value),
              expands: false,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.activity), labelText: 'Complain'),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            /*Row(
          children: [
            Expanded(
              child: TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.building),
                      labelText: 'City')),
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields),
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.activity),
                    labelText: 'State'),
              ),
            ),
          ],
        ),
        */
            const SizedBox(height: TSizes.spaceBtwInputFields),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.singup(),
                child: const Text('Submit'),
              ),
            ),
          ],
        ));
  }
}
