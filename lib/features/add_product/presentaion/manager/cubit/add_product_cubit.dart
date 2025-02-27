import 'package:bloc/bloc.dart';
import 'package:e_commerce_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:e_commerce_dashboard/core/repos/products_repo/products_repo.dart';
import 'package:e_commerce_dashboard/features/add_product/domain/entites/product_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'add_product_state.dart';

class AddProductCubit extends Cubit<AddProductState> {
  AddProductCubit(this.imagesRepo, this.productsRepo)
      : super(AddProductInitial());

  static AddProductCubit get(context) => BlocProvider.of(context);

  final ImagesRepo imagesRepo;
  final ProductsRepo productsRepo;

  Future<void> addProduct(ProductEntity addProductInputEntity) async {
    emit(AddProductLoading());
    final result = await imagesRepo.uploadImage(addProductInputEntity.image);

    result.fold((failure) {
      emit(AddProductError(failure.message));
    }, (url) async {
      addProductInputEntity.imageUrl = url;
      var result = await productsRepo.addProduct(addProductInputEntity);
      result.fold((failure) {
        emit(AddProductError(failure.message));
      }, (success) {
        emit(AddProductSuccess());
      });
    });
  }
}
