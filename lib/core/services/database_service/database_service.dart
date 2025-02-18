abstract class DataBaseService {
  Future<void> addData(
      {required String path,
      required Map<String, dynamic> data,
      String? documentId});
  Future<Map<String, dynamic>> getData({
    required String path,
    required String uId,
  });
  Future<bool> ifDataExist({required String path, required String uId});
}
