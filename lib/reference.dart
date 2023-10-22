import 'package:flutter/material.dart';

class reference extends StatelessWidget {
  const reference({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Reference",
          style: TextStyle(
            fontSize: 30,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 3
              ..color = Color.fromARGB(255, 94, 94, 94),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            // Navigator.pushNamed(context, "/firstpage");
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 94, 94, 94),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text(
                        'references',
                        style: TextStyle(fontSize: 22),
                      ),
                      content: const Text(
                        'Here are some references.',
                        style: TextStyle(fontSize: 18),
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
              icon: Icon(
                Icons.question_mark,
                color: Color.fromARGB(255, 94, 94, 94),
              ))
        ],
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(118, 76, 77, 78),
            borderRadius: BorderRadius.circular(10)
            
            ),
          
          height: 600,
          width: 300,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("Dependences-\n\n      flutter_joystick\n\n      flutter_overlay_window\n\n\n\nURL-\n\n     https://www.desarrollolibre.net/blog/flutter/implement-a-joystick-in-flutter-and-flame?fbclid=IwAR1AdnpWpKenXzWpy8WWuWM-sgEVd9vn71_Q3NW9zn4hbagnqkuQLGQkTQc\n\nhttps://pub.dev/packages/flutter_overlay_window?fbclid=IwAR0ZharotGC-veP-WWLXk1p95rfB4AJD0mUueBFDqjxw_Vt4O1sFLtDuyxw",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
          )),
      ),
    );
  }
}

// class SwitchExample extends StatefulWidget {
//   const SwitchExample({super.key});

//   @override
//   State<SwitchExample> createState() => _SwitchExampleState();
// }

// class _SwitchExampleState extends State<SwitchExample> {
//   bool light = true;

//   @override
//   Widget build(BuildContext context) {
//     return Switch(
//       // This bool value toggles the switch.
//       value: light,
//       activeColor: Colors.red,
//       onChanged: (bool value) {
//         // This is called when the user toggles the switch.
//         setState(() {
//           light = value;
//         });
//       },
//     );
//   }
// }
