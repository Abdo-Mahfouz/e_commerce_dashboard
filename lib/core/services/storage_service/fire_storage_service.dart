import 'dart:io';

import 'package:e_commerce_dashboard/core/services/storage_service/storage_service.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as b;

class FireStorageService implements StorageService {
  final fireStorage = FirebaseStorage.instance.ref();
  @override
  Future<String> uploadFile(File file, path) async {
    String fileName = b.basename(file.path);
    String extensionnName = b.extension(file.path);
    var fileRef = fireStorage.child('$path/$fileName.$extensionnName');
    await fileRef.putFile(file);
    var fileUrl = await fileRef.getDownloadURL();
    return fileUrl;
  }
}
