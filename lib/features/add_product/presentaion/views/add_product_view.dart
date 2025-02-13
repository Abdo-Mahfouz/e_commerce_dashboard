import 'package:e_commerce_dashboard/features/add_product/presentaion/widgets/add_product_view_body.dart';
import 'package:flutter/material.dart';

class AddProductView extends StatelessWidget {
  const AddProductView({super.key});
  static const String routeName = 'addProductView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add New Product'),
        ),
        body: AddProductViewBody());
  }
}
