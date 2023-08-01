import 'package:flutter/material.dart';
import 'package:tasklist/Screen/Homescreen.dart';

void main() {
  runApp(Bottomscreen());
}

class Bottomscreen extends StatefulWidget {
  const Bottomscreen({super.key});

  @override
  State<Bottomscreen> createState() => _BottomscreenState();
}

class _BottomscreenState extends State<Bottomscreen> {
  int currentindex = 0;
  final screens = [
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bottom Navigation bar'),
          centerTitle: true,
        ),
        body: Center(
          child: Text('sd'),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentindex,
            backgroundColor: Colors.blue,
            selectedItemColor: Colors.white,
            onTap: (value) {
              setState(() {
                currentindex = value;
              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Movie')
            ]),
      ),
    );
  }
}
