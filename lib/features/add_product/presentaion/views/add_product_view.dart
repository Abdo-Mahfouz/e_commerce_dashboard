import 'package:e_commerce_dashboard/features/add_product/presentaion/manager/cubit/add_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/get_it.dart';
import '../../../../core/repos/images_repo/images_repo.dart';
import '../../../../core/repos/products_repo/products_repo.dart';
import '../../../../core/utils/app_styles/app_text_style.dart';
import '../widgets/add_product_view_body_bloc_consumer.dart';

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
        body: BlocProvider(
          create: (context) => AddProductCubit(
            getIt.get<ImagesRepo>(),
            getIt.get<ProductsRepo>(),
          ),
          child: AddProductViewBodyBlocConsumer(),
        ));
  }
}
