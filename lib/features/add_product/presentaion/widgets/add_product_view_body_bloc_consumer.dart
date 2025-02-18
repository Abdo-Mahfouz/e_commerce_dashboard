import 'package:e_commerce_dashboard/features/add_product/presentaion/manager/cubit/add_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../core/helper_functions/snack_bar.dart';
import 'add_product_view_body.dart';

class AddProductViewBodyBlocConsumer extends StatelessWidget {
  const AddProductViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductCubit, AddProductState>(
      listener: (context, state) {
        if (state is AddProductSuccess) {
          buildSnackBar(
              context: context, message: 'Product Added Successfully');
        } else if (state is AddProductError) {
          buildSnackBar(context: context, message: state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is AddProductLoading,
          child: const AddProductViewBody(),
        );
      },
    );
  }
}
