import 'package:flutter/material.dart';

class TourismUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(),
        Container(),
        Container(
          height: 300,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image/italy.jpg"),
                  fit: BoxFit.fill)),
        ),
        const Positioned(
            top: 310,
            left: 20,
            child: Text(
              "Italy",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            )),
        const Positioned(
          top: 350,
          left: 10,
          right: 10,
          child: Text(
            "At the beginning of 2022, Italy had an estimated population of 58,9 million. Its population density"
            ", at 197 inhabitants per square kilometre (510/sq mi), is higher than that of most Western European "
            "countries. However, the distribution of the population is widely uneven; the most densely populated areas "
            "are the Po Valley (which contains about a third of the country's population)"
            " in northern Italy and the metropolitan areas of Rome and ",
            textAlign: TextAlign.justify,
          ),
        ),
        const Positioned(
            bottom: 120,
            left: 20,
            child: Text("Place to Visit",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ))),
        Positioned(
          bottom: 50,
          left: 30,
          child: Container(
            height: 50,
            width: 50,
            child: Card(
              child: Image.asset("assets/image/Germany.jpg", fit: BoxFit.fill),
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          left: 200,
          child: Container(
            height: 50,
            width: 50,
            child: Card(
              child: Image.asset("assets/image/Germany.jpg", fit: BoxFit.fill),
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          right: 60,
          child: Container(
            height: 50,
            width: 50,
            child: Card(
              child: Image.asset("assets/image/Germany.jpg", fit: BoxFit.fill),
            ),
          ),
        ),
        Positioned(
            bottom: 10,
            left: 80,
            child: SizedBox(
              width: 250,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple),
                  child: const Text("Press to Explore")),
            ))
      ]),
    );
  }
}
