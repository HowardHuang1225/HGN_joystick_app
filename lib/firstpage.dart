import 'package:flutter/material.dart';
import 'settings.dart';
import 'info.dart';
import 'homepage.dart';

class firstpage extends StatefulWidget {
  firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  int _selectedindex = 0;

  void _navigateButtomBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List _pages = [HomePage(), Settings(), Info()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.abc),
          title: Text(
            "HGN",
            style: TextStyle(
              fontSize: 30,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 3
                ..color = const Color.fromARGB(255, 94, 94, 94),
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 255, 255)),
      body: _pages[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedindex,
        onTap: _navigateButtomBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: "More info")
        ],
      ),
      // drawer: Drawer(
      //   backgroundColor: Colors.pink[50],
      //   child: Column(
      //     children: [
      //       DrawerHeader(
      //           child: Icon(
      //         Icons.favorite,
      //         size: 30,
      //       )),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("H o m e"),
      //         onTap: () {
      //           Navigator.pop(context);
      //           Navigator.pushNamed(context, "/HomePage");
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text("S e t t i n g"),
      //         onTap: () {
      //           Navigator.pop(context);
      //           Navigator.pushNamed(context, "/Settings");
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.info),
      //         title: Text("More  info"),
      //         onTap: () {
      //           // Navigator.pop(context);
      //           // Navigator.pushNamed(context,"/Settings");
      //         },
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
