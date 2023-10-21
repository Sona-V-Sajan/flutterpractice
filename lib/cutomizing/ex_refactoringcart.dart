

import 'package:flutter/material.dart';

class Cart_customizing extends StatelessWidget {
AssetImage? image;
String? description;
String? price;
IconData? stars;
IconData?favorite;
String? rating;


Cart_customizing({
  required this.image,
  required this.description,
  required this.price,
  required this.stars,
  required this.rating,
  required this.favorite,
});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,

      body:
      Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.black,
                    child: Container(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(18),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                    child: Container(child: Image(image: image!, width: 100,height: 100, fit: BoxFit.fitWidth))),
                              ),
                              Positioned(
                                bottom: 3,
                                left: 30,
                                child: Text(
                                  description!,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: 'Roboto'
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                price!,
                                style: TextStyle(color: Colors.blueAccent, fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: Icon(favorite!, color: Colors.grey,size:13,),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Icon(stars!, color: Colors.yellow,size: 10,),
                                  Icon(stars!, color: Colors.yellow,size: 10,),
                                  Icon(stars!, color: Colors.yellow,size: 10,),
                                  Icon(stars!, color: Colors.yellow,size: 10,),
                                  Icon(stars!,color: Colors.grey,size: 10,),
                                ],
                              ),
                              Text(
                                rating!,
                                style: TextStyle(fontSize: 10, fontWeight: FontWeight.normal,color: Colors.grey
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],

      ),


    );
  }
}
