import 'package:e_commerce_dashboard/features/add_product/presentaion/widgets/add_product_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles/app_text_style.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});
  static const String routeName = 'addProductView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Add New Product',
            style: TextStyles.bold16.copyWith(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: AddProductViewBody());
  }
}
