import 'package:flutter/material.dart';

class demo extends StatelessWidget {
  const demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Demo",
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
                    builder: (BuildContext context) =>
                        AlertDialog(
                      title: const Text(
                        'Guide:',
                        style: TextStyle(fontSize: 22),
                      ),
                      content: const Text(
                        'Wipe to the right to see the whole tutorial.',
                        style: TextStyle(fontSize: 18),
                      ),
                      actions: <Widget>[
                        // TextButton(
                        //   onPressed: () => Navigator.pop(context, 'Cancel'),
                        //   child: const Text('Cancel'),
                        // ),
                        TextButton(
                          onPressed: () =>
                              Navigator.pop(context, 'OK'),
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
      body: ListView(
        // ListView, Column
        scrollDirection: Axis.horizontal,

        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(48, 0, 0, 0)),
                shape: BoxShape.rectangle,
                color: Color.fromARGB(70, 206, 147, 216),
                borderRadius:
                    BorderRadius.all(Radius.circular(10))),
            height:
                MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 1.05,
            child: Column(
              children: [
                Text(
                  "\n  Step 1:\n",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 30,
                      height: 1,
                      fontWeight: FontWeight.bold),
                ),
                Image.asset('assets/images/tutor_start.png',height: 580,)
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 1.1,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(48, 0, 0, 0)),
                shape: BoxShape.rectangle,
                color: Color.fromARGB(50, 206, 147, 216),
                borderRadius:
                    BorderRadius.all(Radius.circular(10))),
            child: Column(
              children: [
                Text(
                  "\n  Step 2:\n",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 30,
                      height: 1,
                      fontWeight: FontWeight.bold),
                ),
                Image.asset('assets/images/tutor_nav.png',height: 580,)
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 1.1,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(48, 0, 0, 0)),
                shape: BoxShape.rectangle,
                color: Color.fromARGB(36, 206, 147, 216),
                borderRadius:
                    BorderRadius.all(Radius.circular(10))),
            child: Column(
              children: [
                Text(
                  "\n  Step 3:\n",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 30,
                      height: 1,
                      fontWeight: FontWeight.bold),
                ),
                Image.asset('assets/images/tutor_click.png',height: 580,)
              ],
            ),
          ),
          // Container(
          //   height: MediaQuery.of(context).size.height,
          //   width: MediaQuery.of(context).size.width * 1.1,
          //   decoration: BoxDecoration(
          //       border: Border.all(
          //           color: Color.fromARGB(48, 0, 0, 0)),
          //       shape: BoxShape.rectangle,
          //       color: Color.fromARGB(10, 206, 147, 216),
          //       borderRadius:
          //           BorderRadius.all(Radius.circular(10))),
          //   child: Column(
          //     children: [
          //       Text(
          //         "\n   Step 4:",
          //         style: TextStyle(
          //             fontStyle: FontStyle.italic,
          //             fontSize: 30,
          //             height: 1,
          //             fontWeight: FontWeight.bold),
          //       ),
          //       Image.asset('assets/images/doge.png')
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}

////////////////////////////////
