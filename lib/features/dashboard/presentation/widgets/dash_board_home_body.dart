import 'package:e_commerce_dashboard/features/add_product/presentaion/views/add_product_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';

class DashBoardHomeBody extends StatelessWidget {
  const DashBoardHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Center(
          child: CustomButton(
              text: 'Add Data',
              onPressed: () {
                Navigator.pushNamed(context, AddProductView.routeName);
              })),
    );
  }
}
