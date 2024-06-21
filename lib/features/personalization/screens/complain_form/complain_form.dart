import 'package:com_app/features/authentication/screens/complain-reg-test/complain_controller.dart';
import 'package:com_app/features/personalization/screens/complain_form/complain_main_from.dart';
import 'package:com_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:com_app/common/widgets/appbar/appbar.dart';
import 'package:com_app/utils/constants/sizes.dart';

class ComplainForm extends StatelessWidget {
  const ComplainForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:
          TAppBar(showBackArrow: true, title: Text('Register New Complain')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: ComplainMainForm(),
        ),
      ),
    );
  }
}
