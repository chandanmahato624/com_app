import 'package:flutter/material.dart';
import 'package:com_app/common/widgets/appbar/appbar.dart';
import 'package:com_app/common/widgets/products/sortable/sortable_products.dart';
import 'package:com_app/utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: TAppBar(title: Text('Popular Products'), showBackArrow: true),
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TSortableProducts()),
        ));
    // 5.55
  }
}
