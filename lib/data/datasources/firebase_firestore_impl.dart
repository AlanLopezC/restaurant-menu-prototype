import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

abstract class MyFirestore {
  static Future<List<Map<String, dynamic>>?> fetchDocs(String route) async {
    final firestore = FirebaseFirestore.instance;
    QuerySnapshot<Map<String, dynamic>> querySnapshot;
    List<Map<String, dynamic>>? docs = [];
    try {
      querySnapshot = await firestore
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
      debugPrint(e.toString());
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

  static Future<List<Map<String, dynamic>>?> fetchBebidas(
      String categoria) async {
    return fetchDocs("categorias/$categoria/lista");
  }

  static Future<int> sendSurvey({
    required Map<String, dynamic> document,
    required String cellphone,
  }) async {
    final firestore = FirebaseFirestore.instance;

    final ref = firestore.doc("survey/$cellphone");

    if ((await ref.get()).exists) {
      return -1;
    }

    try {
      await ref.set(document);
      return 0;
    } catch (e) {
      debugPrint("Hubo un error al subir la encuesta");
      debugPrint(e.toString());
      return -2;
    }
  }
}
