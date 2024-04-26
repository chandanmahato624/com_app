import 'package:flutter/material.dart';
import 'package:com_app/common/widgets/appbar/appbar.dart';
import 'package:com_app/features/shop/screens/order/widgets/order_list.dart';
import 'package:com_app/utils/constants/sizes.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// App bar----------
      appBar: TAppBar(
        title: Text('My Complaints',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),

        /// Orders
        child: TOrderListItems(),
      ),
    );
  }
}
