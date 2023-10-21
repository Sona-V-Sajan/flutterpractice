import 'package:flutter/material.dart';
import 'package:flutterpractice/cutomizing/ex_refactoringcart.dart';
void main(){
  runApp(MaterialApp(home: Refactor_Cart(),));
}
class Refactor_Cart extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Recomended",style: TextStyle(
          color: Colors.white,fontSize: 20,
        ),),
        leading: CircleAvatar(
            minRadius: 5,
            maxRadius: 5,
            backgroundColor: Colors.white,
            child: Icon(Icons.arrow_back, color:Colors.black ,)),
        actions: [
          CircleAvatar(
              maxRadius: 10,
              minRadius: 10,
              backgroundColor: Colors.black,
              child: Icon(Icons.sync_alt ,color: Colors.white,))],

      ),

      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [

          Cart_customizing(
            image: AssetImage("assets/image/bag.jpg"),
            description: 'Nike Air max 270  ', price: '\$2299.00', stars: Icons.star, rating: '932 sole', favorite: Icons.favorite_border,

          ),
          Cart_customizing(
            image: AssetImage("assets/image/shoes.jpg"),
            description: 'Nike Air max 270  ', price: '\$2299.00', stars: Icons.star, rating: '932 sole', favorite: Icons.favorite_border,

          ),
          Cart_customizing(
            image: AssetImage("assets/image/coat.jpg"),
            description: 'Nike Air max 270  ', price: '\$2299.00', stars: Icons.star, rating: '932 sole', favorite: Icons.favorite_border,

          ),
          Cart_customizing(
            image: AssetImage("assets/image/chain.jpg"),
            description: 'Nike Air max 270  ', price: '\$2299.00', stars: Icons.star, rating: '932 sole', favorite: Icons.favorite_border,

          ),
          Cart_customizing(
            image: AssetImage("assets/image/coat.jpg"),
            description: 'Nike Air max 270  ', price: '\$2299.00', stars: Icons.star, rating: '932 sole', favorite: Icons.favorite_border,

          ),
          Cart_customizing(
            image: AssetImage("assets/image/chain.jpg"),
            description: 'Nike Air max 270  ', price: '\$2299.00', stars: Icons.star, rating: '932 sole', favorite: Icons.favorite_border,

          ),


        ],),
    );
  }
}
