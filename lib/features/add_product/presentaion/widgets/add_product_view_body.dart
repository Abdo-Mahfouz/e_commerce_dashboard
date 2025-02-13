import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            CustomTextFormField(
              labelText: 'Product Name',
              onSaved: (value) {},
            ),
            CustomTextFormField(
              labelText: 'Product Description',
              onSaved: (value) {},
            ),
            CustomTextFormField(
              labelText: 'Product Price',
              keyboardType: TextInputType.number,
              onSaved: (value) {},
            ),
            CustomTextFormField(
              labelText: 'Product Quantity',
              keyboardType: TextInputType.number,
              onSaved: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
