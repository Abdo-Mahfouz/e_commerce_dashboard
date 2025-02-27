import 'package:dartz/dartz.dart';
import 'package:e_commerce_dashboard/core/errors/failure.dart';
import 'package:e_commerce_dashboard/features/add_product/domain/entites/product_entity.dart';

abstract class ProductsRepo {
  Future<Either<Failure, void>> addProduct(ProductEntity addProductInputEntity);
}
