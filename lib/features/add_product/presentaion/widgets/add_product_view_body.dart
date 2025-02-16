import 'package:e_commerce_dashboard/features/add_product/presentaion/widgets/image_field.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_text_form_field.dart';
import 'is_item_featurd.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  bool isFeatured = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            spacing: 16.0,
            children: [
              CustomTextFormField(
                keyboardType: TextInputType.text,
                labelText: 'Product Name',
                onSaved: (value) {},
              ),
              CustomTextFormField(
                keyboardType: TextInputType.number,
                labelText: 'Product Price',
                onSaved: (value) {},
              ),
              CustomTextFormField(
                keyboardType: TextInputType.number,
                labelText: 'Product Code',
                onSaved: (value) {},
              ),
              CustomTextFormField(
                keyboardType: TextInputType.text,
                labelText: 'Product Description',
                maxLines: 5,
                onSaved: (value) {},
              ),
              ImageField(
                onFileChanged: (image) {},
              ),
              IsItemFeaturedWidget(
                onChanged: (value) {
                  isFeatured = value;
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
