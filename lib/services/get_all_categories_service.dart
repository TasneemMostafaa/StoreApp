import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:storeapp/helper/api.dart';

class AllCategoryService {
  Future<List<dynamic>> getAllCategories() async {
    
    List<dynamic> data = await Api().get(url:'https://dummyjson.com/products/categories');
    
    
      //List<dynamic> data = jsonDecode(response.body);
      List<String> categories = [];
      for (var category in data) {
        categories.add(category['slug']);
      }
      return categories;
  }
}
