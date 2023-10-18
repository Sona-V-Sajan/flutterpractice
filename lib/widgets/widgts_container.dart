import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Widget_Containerex(),));
}
class Widget_Containerex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Container(
          // alignment: Alignment(-1, 1),
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
              // color: Colors.deepPurple,
              // borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
              ]),
          // child: Text("Hello",style: TextStyle(fontSize: 30),),
        ),
      ),
    );
  }
}
