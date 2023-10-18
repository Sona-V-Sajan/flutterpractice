import 'package:flutter/material.dart';
import 'package:flutterpractice/Listview/tourismui.dart';

void main() {
  runApp(MaterialApp(
    home: ListData(),
  ));
}

class ListData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: [
          const Text(
            "Popular",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => TourismUi()));
              },
              child: Container(
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/image/Germany.jpg"),
                      fit: BoxFit.cover),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 20),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Germany",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/France.jpeg"),
                    fit: BoxFit.cover),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "France",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/italy.jpg"),
                    fit: BoxFit.cover),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Italy",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/india.png"),
                    fit: BoxFit.cover),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "India",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
