import 'dart:io';

import 'package:e_commerce_dashboard/features/add_product/presentaion/widgets/image_field.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';
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
  late String productName, productCode, productDescription;
  late num productPrice;
  File? productImage;

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
                onSaved: (value) {
                  productName = value!;
                },
              ),
              CustomTextFormField(
                keyboardType: TextInputType.number,
                labelText: 'Product Price',
                onSaved: (value) {
                  productPrice = num.parse(value!);
                },
              ),
              CustomTextFormField(
                keyboardType: TextInputType.number,
                labelText: 'Product Code',
                onSaved: (value) {
                  productCode = value!.toLowerCase();
                },
              ),
              CustomTextFormField(
                keyboardType: TextInputType.text,
                labelText: 'Product Description',
                maxLines: 5,
                onSaved: (value) {
                  productDescription = value!;
                },
              ),
              Container(
                color: Colors.white,
                height: 60,
                child: IsItemFeaturedWidget(
                  onChanged: (value) {
                    isFeatured = value;
                  },
                ),
              ),
              ImageField(
                onFileChanged: (image) {
                  productImage = image;
                },
              ),
              CustomButton(
                text: 'Add',
                onPressed: () {
                  if (productImage != null) {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      print(productName);
                      print(productPrice);
                      print(productCode);
                      print(productDescription);
                      print(isFeatured);
                      print(productImage);
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  } else {
                    showError(context);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void showError(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Please select an image'),
      ),
    );
  }
}
