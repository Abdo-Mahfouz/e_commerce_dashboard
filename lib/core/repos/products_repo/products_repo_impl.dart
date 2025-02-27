import 'package:dartz/dartz.dart';
import 'package:e_commerce_dashboard/core/errors/failure.dart';
import 'package:e_commerce_dashboard/core/services/database_service/database_service.dart';
import 'package:e_commerce_dashboard/features/add_product/data/models/product_model.dart';
import 'package:e_commerce_dashboard/features/add_product/domain/entites/product_entity.dart';
import 'package:e_commerce_dashboard/core/repos/products_repo/products_repo.dart';

import '../../utils/backend_endpoints.dart';

class ProductsRepoImpl implements ProductsRepo {
  DataBaseService dataBaseService;
  ProductsRepoImpl({required this.dataBaseService});
  @override
  Future<Either<Failure, void>> addProduct(
      ProductEntity addProductInputEntity) async {
    try {
      dataBaseService.addData(
          path: BackendEndpoints.productsPath,
          data: ProductModel.fromEntity(addProductInputEntity).toJson());
      return const Right(null);
    } catch (e) {
      return left(ServerFailure('Failed to add product'));
    }
  }
}
