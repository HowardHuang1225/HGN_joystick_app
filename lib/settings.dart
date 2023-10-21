import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  // const Settings({super.keys});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.c,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: const Color.fromARGB(0, 155, 39, 176),
                ),
                height: 50,
                width: 320,
                child: Text(
                  "  Settings",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 28,
                      height: 1,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: const Color.fromARGB(169, 158, 158, 158),
                borderRadius: BorderRadius.circular(10)),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Set",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    height: 1.6,
                    fontFamily: "Caveat",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Container(
            height: 20,
            width: 300,
            color: Color.fromARGB(0, 255, 255, 255),
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: const Color.fromARGB(169, 158, 158, 158),
                borderRadius: BorderRadius.circular(10)),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Set",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    height: 1.6,
                    fontFamily: "Caveat",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Container(
            height: 20,
            width: 300,
            color: Color.fromARGB(0, 255, 255, 255),
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: const Color.fromARGB(169, 158, 158, 158),
                borderRadius: BorderRadius.circular(10)),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Set",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    height: 1.6,
                    fontFamily: "Caveat",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Container(
            height: 20,
            width: 300,
            color: Color.fromARGB(0, 255, 255, 255),
          ),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
                color: const Color.fromARGB(169, 158, 158, 158),
                borderRadius: BorderRadius.circular(10)),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Set  ",
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    height: 1.6,
                    fontFamily: "Caveat",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
