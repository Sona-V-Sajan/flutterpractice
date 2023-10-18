import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Example_Expanded()));
}
class Example_Expanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Expanded(
            flex:2 ,
            child: Container(
              height: 200,
              color: Colors.deepPurple,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.pink,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
            ),
          )
        ],

      ),

    );
  }
}
