import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';

class AddProduct {
  Future<ProductModel> addProduct({
    required String title,
    required String price,
    required String description,
    required String thumbnail,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: 'https://dummyjson.com/products/add',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'thumbnail': thumbnail,
        'category': category,
      },
    );
    return ProductModel.fromJson(data);
  }
}
