import 'package:flutter/material.dart';

class Info extends StatelessWidget {
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
                  "  Infos",
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
            height: 280,
            width: 300,
            decoration: BoxDecoration(
                color: const Color.fromARGB(169, 158, 158, 158),
                borderRadius: BorderRadius.circular(10),
                shape: BoxShape.rectangle),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                " The app we developed aims to make\n  it easy for everyone to use a \n smartphone, including those with \n hand injuries or physical disabilities.\n We have designed a special joystick\n that allows users to easily control the\n phone using just their thumb.",
                style: TextStyle(fontSize: 17,height: 2,fontStyle: FontStyle.italic,fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Container(
            height: 30,
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
              onPressed: () {
                Navigator.pushNamed(context, "/reference");
              },
              child: Text(
                "Reference",
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
            height: 30,
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
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text(
                    'Our Email',
                    style: TextStyle(fontSize: 22),
                  ),
                  content: const Text(
                    'howardm511jb@gmail.com\nallen070533@gmail.com\ngonod32053205@gmail.com',
                    style: TextStyle(fontSize: 15, height: 2.5),
                  ),
                  actions: <Widget>[
                    // TextButton(
                    //   onPressed: () => Navigator.pop(context, 'Cancel'),
                    //   child: const Text('Cancel'),
                    // ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text(
                        'OK',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              child: Text(
                "Contact us",
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
