import 'package:storeapp/helper/api.dart';
import 'package:storeapp/models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct({
    required int id,
    required String title,
    required String price,
    required String description,
    required String thumbnail,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().put(
      url: 'https://dummyjson.com/products/$id',
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