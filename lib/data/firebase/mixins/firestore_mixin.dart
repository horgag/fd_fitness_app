import 'package:cloud_firestore/cloud_firestore.dart';

mixin FirestoreMixin {
  /// Create a CollectionReference called users that references the firestore collection
  late final CollectionReference<Map<String, dynamic>> collectionRef = FirebaseFirestore.instance.collection(collectionKey());
  String collectionKey();
}
