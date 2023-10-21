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
                        'Those are our references',
                        style: TextStyle(fontSize: 22),
                      ),
                      content: const Text(
                        'Those are our references.',
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
      // body: Center(
      //   child: SwitchExample(),
      // ),
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
