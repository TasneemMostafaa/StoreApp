import 'package:flutter/material.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/screens/update_product_page.dart';

class CustomCard extends StatelessWidget {
  CustomCard({ required this.product,super.key});

  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, UpdateProductPage.id, arguments: product);
      },
      child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration( 
                  boxShadow: [BoxShadow(blurRadius: 40, color: Colors.white70, 
                  spreadRadius: 0, offset: Offset(10, 10))],
                ),
                child: Card(
                  color: Colors.white,
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.title.substring(0), style: TextStyle(color: Colors.grey, fontSize: 14),),
                        SizedBox(height: 2,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(r'$' '${product.price.toString()}', style: TextStyle(color: Colors.black, fontSize: 16),),
                            Icon(Icons.favorite),
                          ],
                        )
                      ],
                    
                    ),
                  ),
                ),
              ),
               Positioned( left:30, top: -70,
                child: Image.network(product.thumbnail,
                 height: 130, width:130,)),
            ],
          ),
    );
  }
}