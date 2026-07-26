class ProductModel {
  final int id;
  final String title;
  final String description;
  final String category;
  final double price;
  final String thumbnail;
  //final double rating;
  //final List<String> images;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.thumbnail,
    //required this.rating,
    //required this.images,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      description: jsonData['description'],
      category: jsonData['category'],
      price:double.parse(jsonData['price'].toString()),
      thumbnail: jsonData['thumbnail'],
      //rating: jsonData['rating'],
      //images: jsonData['images'],
    );
  }
}
