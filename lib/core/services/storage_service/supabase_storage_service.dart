import 'dart:io';
import 'package:e_commerce_dashboard/core/services/storage_service/storage_service.dart';
import 'package:supabase/supabase.dart';
import 'package:path/path.dart' as b;
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../constants.dart';

class SupabaseStorageService implements StorageService {
  static late SupabaseClient _supabaseClient;

  static initSupaBase() async {
    final supabase = await Supabase.initialize(
      url: ksupaBaseurl,
      anonKey: kSupaBaseanonKey,
    );
    _supabaseClient = supabase.client;
  }

  @override
  Future<String> uploadFile(File file, String path) async {
    String fileName = b.basename(file.path); // Already includes extension
    String filePath = '$path/$fileName';
    //String extensionnName = b.extension(file.path);
    try {
      await _supabaseClient.storage.from('products').upload(filePath, file);

      final fileUrl =
          _supabaseClient.storage.from('products').getPublicUrl(filePath);
      return fileUrl;
    } catch (e) {
      throw Exception('Failed to upload file: $e');
    }
  }
}
