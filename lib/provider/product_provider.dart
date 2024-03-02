// product_provider.dart

import 'package:firebase_operation/data.dart';
import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class ProductProvider extends ChangeNotifier {
  late List<Product> _products;

  List<Product> get products => _products;

  ProductProvider() {
    _products = [];
    fetchData();
  }

  Future<void> fetchData() async {
    try {
      QuerySnapshot<Map<String, dynamic>> snapshot =
      await FirebaseFirestore.instance.collection('yourCollection').get();

      _products = snapshot.docs
          .map((doc) => Product.fromMap(doc.data()))
          .toList();
      notifyListeners();
    } catch (e, stackTrace) {
      ErrorHandler.handleError(e,);
      // Handle the error as needed, you can log it, show a user-friendly message, etc.
    }
  }
}
class ErrorHandler {
  static void handleError(dynamic error) {
    if (kDebugMode) {
      print('Error: $error');
    }
    // Add more error handling logic as needed
  }
}