import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:e_commerce_dashboard/core/errors/failure.dart';
import 'package:e_commerce_dashboard/core/services/storage_service/storage_service.dart';
import 'package:e_commerce_dashboard/core/utils/backend_endpoints.dart';

import 'images_repo.dart';

class ImagesRepoImpl implements ImagesRepo {
  final StorageService storageService;

  ImagesRepoImpl({required this.storageService});
  @override
  Future<Either<Failure, String>> uploadImage(File image) async {
    try {
      String url =
          await storageService.uploadFile(image, BackendEndpoints.imagesPath);
      return Right(url);
    } catch (e) {
      return Left(
        ServerFailure('failed to upload image'),
      );
    }
  }
}
