import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  // const Settings({super.keys});

  int _value = 5;
  int _min = 0;
  int _max = 10;

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
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
                SwitchExample(),
              ],
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
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
                SwitchExample(),
              ],
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
            child: Row(
              children: [
                // Slider(
                //     value: _value.toDouble(),
                //     min: _min.toDouble(),
                //     max: _max.toDouble(),
                //     onChanged: ()),
                TextButton(
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
              ],
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

/////////////////////
class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Color.fromARGB(255, 102, 115, 107),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
