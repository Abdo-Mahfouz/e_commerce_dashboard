import 'package:dartz/dartz.dart';
import 'package:e_commerce_dashboard/core/errors/failure.dart';
import 'package:e_commerce_dashboard/features/add_product/domain/entites/add_product_input_entity.dart';

abstract class ProductsRepo {
  Future<Either<Failure, void>> addProduct(
      AddProductInputEntity addProductInputEntity);
}
