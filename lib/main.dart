import 'package:flutter/material.dart';
import 'package:flutter_joystick/flutter_joystick.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';
import 'package:project_a/fakeapp.dart';
import 'demo.dart';
import 'firstpage.dart';
import 'info.dart';
import 'settings.dart';
import 'homepage.dart';
import 'reference.dart';

void main() {
  runApp(const MyApp());
}

@pragma("vm:entry-point")
void overlayMain() {
  debugPrint("layer initialized");
  runApp(MaterialApp(
    theme: ThemeData(
        scaffoldBackgroundColor:
            Color.fromARGB(69, 255, 255, 255)),
    debugShowCheckedModeBanner: false,
    home: const OverlayTest(),
  ));
}

class OverlayTest extends StatelessWidget {
  const OverlayTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints.loose(
              const Size(499.0, 500.0)),
          child: Joystick(listener: (details) {}),
        ),
        ConstrainedBox(
            constraints: BoxConstraints.loose(
                const Size(500.0, 100.0)),
            child: TextButton(
              child: Text("X"),
              onPressed: () async {
                await FlutterOverlayWindow.closeOverlay();
              },
            ))
      ],
    ));
  }
}

class OverlayTest1 extends StatelessWidget {
  const OverlayTest1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ConstrainedBox(
            constraints: BoxConstraints.loose(
                const Size(499.0, 500.0)),
            child: TextButton(
              child: Text("Clickable?"),
              onPressed: () {
                debugPrint("HolyShit!!!");
              },
            )),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: firstpage(),
      routes: {
        "/Settings": (context) => Settings(),
        "/HomePage": (context) => HomePage(),
        "/fakeapp": (context) => JoystickExample(),
        "/info": (context) => Info(),
        "/demo": (context) => demo(),
        "/firstpage": (context) => firstpage(),
        "/reference": (context) => reference()
      },
    );
  }
}
