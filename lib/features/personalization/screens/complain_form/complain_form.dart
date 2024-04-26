import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:com_app/common/widgets/appbar/appbar.dart';
import 'package:com_app/utils/constants/sizes.dart';

class ComplainForm extends StatelessWidget {
  const ComplainForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
          showBackArrow: true, title: Text('Register New Complain')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Form(
              child: Column(
            children: [
              TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user), labelText: 'Full Name')),
              const SizedBox(height: TSizes.spaceBtwInputFields),
              TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.mobile), labelText: 'Phone No')),
              const SizedBox(height: TSizes.spaceBtwInputFields),
              TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.building),
                      labelText: 'Hostel Name')),
              const SizedBox(height: TSizes.spaceBtwInputFields),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.code), labelText: 'Room No'),
              ),
              const SizedBox(height: TSizes.spaceBtwInputFields),
              TextFormField(
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
                  onPressed: () {},
                  child: const Text('Submit'),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
