import 'package:e_commerce_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:e_commerce_dashboard/core/repos/images_repo/images_repo_impl.dart';
import 'package:e_commerce_dashboard/core/repos/products_repo/products_repo.dart';
import 'package:e_commerce_dashboard/core/repos/products_repo/products_repo_impl.dart';
import 'package:e_commerce_dashboard/core/services/database_service/database_service.dart';
import 'package:e_commerce_dashboard/core/services/database_service/firestore_service.dart';
import 'package:e_commerce_dashboard/core/services/storage_service/fire_storage_service.dart';
import 'package:e_commerce_dashboard/core/services/storage_service/storage_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDI() {
  getIt.registerLazySingleton<FirestoreService>(() => FirestoreService());
  getIt.registerLazySingleton<FireStorageService>(() => FireStorageService());
  getIt.registerLazySingleton<StorageService>(() => FireStorageService());
  getIt.registerLazySingleton<DataBaseService>(() => FirestoreService());

  getIt.registerLazySingleton<ImagesRepo>(
    () => ImagesRepoImpl(
      storageService: getIt<FireStorageService>(),
    ),
  );

  getIt.registerLazySingleton<ProductsRepo>(
    () => ProductsRepoImpl(dataBaseService: getIt<FirestoreService>()),
  );
}
