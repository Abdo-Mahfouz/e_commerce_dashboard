import 'package:e_commerce_dashboard/core/repos/images_repo/images_repo.dart';
import 'package:e_commerce_dashboard/core/repos/images_repo/images_repo_impl.dart';
import 'package:e_commerce_dashboard/core/services/storage_service/fire_storage_service.dart';
import 'package:e_commerce_dashboard/core/services/storage_service/storage_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupDI() {
  getIt.registerLazySingleton<FireStorageService>(() => FireStorageService());
  getIt.registerLazySingleton<StorageService>(() => FireStorageService());

  getIt.registerLazySingleton<ImagesRepo>(
    () => ImagesRepoImpl(
      storageService: getIt<FireStorageService>(),
    ),
  );
}
