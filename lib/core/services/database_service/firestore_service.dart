import 'package:cloud_firestore/cloud_firestore.dart';

import 'database_service.dart';

class FirestoreService implements DataBaseService {
  FirebaseFirestore fireStore = FirebaseFirestore.instance;
  @override
  Future<void> addData(
      {required String path,
      required Map<String, dynamic> data,
      String? documentId}) async {
    if (documentId != null) {
      await fireStore.collection(path).doc(documentId).set(data);
    } else {
      await fireStore.collection(path).add(data);
    }
  }

  @override
  Future<Map<String, dynamic>> getData(
      {required String path, required String uId}) async {
    var data = await fireStore.collection(path).doc(uId).get();
    return data.data() as Map<String, dynamic>;
  }

  @override
  Future<bool> ifDataExist({required String path, required String uId}) async {
    var data = await fireStore.collection(path).doc(uId).get();
    return data.exists;
  }
}
