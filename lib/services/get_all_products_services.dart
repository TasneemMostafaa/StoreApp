import 'dart:convert';
import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';
//import 'package:http/http.dart' as http;

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
  final data = await Api().get(url:'https://dummyjson.com/products?limit=194');

  //final data = jsonDecode(response.body);
  List<dynamic> products = data['products'];
  List<ProductModel> productsList = [];
  for (int i = 0; i < products.length; i++) {
    productsList.add(ProductModel.fromJson(products[i]));
  }
  return productsList;
  }
}
