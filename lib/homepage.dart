// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';

// import 'settings.dart';
// import 'info.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // ListView, Column
        scrollDirection: Axis.vertical,

        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // color: const Color.fromARGB(0, 155, 39, 176),
                ),
                height: 30,
                width: 320,
                child: Text(
                  " Welcome to HGN !!!",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 28,
                      height: 1,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              height: 180,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                shape: BoxShape.rectangle,
                // color: const Color.fromARGB(0, 155, 39, 176),
                color: Color.fromARGB(41, 206, 147, 216),
              ),
              child: Text(
                "   This app is willing to make the \n   expirience of using Pixel Phone\n   more convienient for accessibility\n   community people!",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  height: 1.6,
                  fontFamily: "Caveat",
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              height: 200,
              width: 320,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                // color: const Color.fromARGB(0, 155, 39, 176),
                color: Color.fromARGB(41, 206, 147, 216),
              ),
              child: Text(
                "   You can just press the start button\n   to start the survice. A joystick will \n   appear at homepage, and you can\n   manipulate the curser to control\n   the phone by your thumb only!",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  height: 1.6,
                  fontFamily: "Caveat",
                ),
              ),
            ),
          ),
          Center(
            child: Container(
                height: 280,
                width: 320,
                color: Color.fromARGB(36, 206, 147, 216),
                alignment: Alignment.topLeft,
                child: Container(
                  width: 250,
                  height: 50,
                  alignment: Alignment.topLeft,
                  child: TextButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      Navigator.pushNamed(context, "/demo");
                    },
                    child: Text(
                      " Quick guide  <-- Tab Here",
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          height: 1.6,
                          fontFamily: "Caveat",
                          color: Colors.deepPurple),
                    ),
                  ),
                )
                // child: Text(
                //   "\n   demo  <-- Tab Here",
                //   style: TextStyle(
                //       fontStyle: FontStyle.italic,
                //       fontSize: 20,
                //       height: 1.6,
                //       fontFamily: "Caveat",
                //       color: Colors.deepPurple),
                // ),
                ),
          ),
        ],
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: [
      //       Container(
      //         height: 70,
      //         width: 369,
      //         color: const Color.fromARGB(0, 155, 39, 176),
      //         child: Text(
      //           "\n Home Page:",
      //           style: TextStyle(
      //               fontStyle: FontStyle.italic,
      //               fontSize: 28,
      //               height: 1,
      //               fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //       Container(
      //         height: 180,
      //         width: 310,
      //         color: Color.fromARGB(77, 206, 147, 216),
      //         child: Text(
      //           " Welcome to APP!!!\n This app is willing to make the \n expirience of using Pixal Phone\n more convienient for accessibility\n community people!",
      //           style: TextStyle(
      //               fontStyle: FontStyle.italic, fontSize: 20, height: 1.6),
      //         ),
      //       ),
      //       Container(
      //         height: 200,
      //         width: 310,
      //         color: Color.fromARGB(77, 206, 147, 216),
      //         child: Text(
      //           " You can just press the start button\n to start the survice.\n A joistick will appear at homepage\n and you can manipulate the curser\n to controll the phone with only your\n thumb !",
      //           style: TextStyle(
      //               fontStyle: FontStyle.italic, fontSize: 20, height: 1.6),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      floatingActionButton: SizedBox(
        height: 80, //height of button
        width: 280,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 119, 39, 176),
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30.0)),
                textStyle: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold)),
            onPressed: () {
              Navigator.pushNamed(context, "/fakeapp");
            },
            onLongPress: () async {
              debugPrint("OVERLAYYYYY");
              if (!await FlutterOverlayWindow
                  .isPermissionGranted()) {
                await FlutterOverlayWindow
                    .requestPermission();
              } else {
                debugPrint("r u goin 2 appear rn");
                await FlutterOverlayWindow.showOverlay(
                    height: 500,
                    width: 500,
                    alignment: OverlayAlignment.center,
                    enableDrag: false,
                    positionGravity: PositionGravity.none);
              }
            },
            child:
                Text("Start", textAlign: TextAlign.center)),
      ),

      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat,
    );
  }
}
