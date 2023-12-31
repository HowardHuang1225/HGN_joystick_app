import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  // const Settings({super.keys});
  static double _value = 0.5;
  static double __value = 0.5;
  static bool _isEnabled1 = true;
  static bool _isEnabled2 = true;

  // int _min = 0;
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
                color: const Color.fromARGB(
                    169, 158, 158, 158),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "  ClickThrough",
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
                color: const Color.fromARGB(
                    169, 158, 158, 158),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "  Shortcut",
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
                color: const Color.fromARGB(
                    169, 158, 158, 158),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "  Opacity",
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
                Slider(
                  min: 0.0,
                  max: 1.0,
                  value: _value,
                  onChanged: (double value) {
                    setState(() {
                      _value = value;
                    });
                  },
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
                color: const Color.fromARGB(
                    169, 158, 158, 158),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "  StickSize",
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
                Slider(
                  min: 0.0,
                  max: 1.0,
                  value: __value,
                  onChanged: (double value) {
                    setState(() {
                      __value = value;
                    });
                  },
                ),
              ],
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
  State<SwitchExample> createState() =>
      _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Color.fromARGB(255, 34, 150, 222),
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}

/////////////////////////////
