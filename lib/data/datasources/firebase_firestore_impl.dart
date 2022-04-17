import 'package:cloud_firestore/cloud_firestore.dart';

abstract class MyFirestore {
  static Future<List<Map<String, dynamic>>?> fetchDocs(String route) async {
    final _firestore = FirebaseFirestore.instance;
    QuerySnapshot<Map<String, dynamic>> querySnapshot;
    List<Map<String, dynamic>>? docs = [];
    try {
      querySnapshot = await _firestore
          .collection(route)
          // .where("nombre", isEqualTo: nombre.toUpperCase())
          // .orderBy("fecha")
          .get();

      if (querySnapshot.docs.isNotEmpty) {
        for (var doc in querySnapshot.docs.toList()) {
          docs.add(doc.data());
        }
        return docs;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  static Future<List<Map<String, dynamic>>?> fetchCategories() async {
    return fetchDocs("categorias");
  }

  static Future<List<Map<String, dynamic>>?> fetchPlatillos(
      String categoria) async {
    return fetchDocs("categorias/$categoria/platillos");
  }
}
