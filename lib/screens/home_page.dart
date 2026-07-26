import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/services/get_all_products_services.dart';
import 'package:storeapp/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.cartPlus , color: Colors.black,))
        ],
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        centerTitle: true,
        title: Text('New Trend', style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top:65),
        child: FutureBuilder(future: AllProductsService().getAllProducts(),
         builder:(context, snapshot){
          if(snapshot.hasData){
            List<ProductModel> products = snapshot.data!;
            


          return  GridView.builder(clipBehavior: Clip.none,
          itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        childAspectRatio: 1.0, crossAxisSpacing: 10, mainAxisSpacing: 90),
        itemBuilder: (context, index) {
          return CustomCard(product: products[index],);
        
          
        },
        );}
        else if (snapshot.hasError) {
           return Text(snapshot.error.toString());
             }
        else{
          return Center(child: CircularProgressIndicator());
        }
         })
      ),
    );
  }
}