// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:voguevilla/infrastucture/Repo/istoragefacad.dart';

class FireStoredata implements IstorageFacad {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Future savedatatofirestore(
      {required Map<String, dynamic> data, required String collection}) async {
    try {
      final response = await firestore.collection(collection).doc().set(data);
    } catch (e) {
      throw Exception(e);
    }
  }
}

class User {
  int? id;
  String? title;
  double? price;
  User({
    this.id,
    this.title,
    this.price,
  });
}
