import 'package:flutter/material.dart';
import 'package:untitled/Page1.dart';
import 'package:untitled/Page2.dart';
import 'package:untitled/home.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int idx = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
       Home(),Page1(),Page2()
    ];
    return Scaffold(
      body: list[idx],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: idx,
        onTap: (value) {
          setState(() {
            idx = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.abc),label: "Page1"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label: "Page2"),
        ],
      ),
    );
  }
}
