import 'package:flutter/material.dart';
import 'freehand_drawing.dart';
import 'tab1.dart';
import 'tab2.dart';
import 'themes.dart';

ThemeData _theme = theme2();

//https://www.youtube.com/watch?v=Z4-XLVRCRpA&t=424s

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super (key: key);

  @override
  State<MyHomePage> createState()=> _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> screens = [Tab1(),Tab2(),Tab3(),Draw()];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 3){
        print(index);
        _theme = themeFreehand();
      } else {
        print(index);
        print("here");
        _theme = theme2();
      }
    });
  }

  Widget bottomNavBar() {
    return  BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.android),
          label: 'Second',
          backgroundColor: Colors.blue,
          //Navigator.push(context, route)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.animation),
          label: 'Pattern',
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.brush),
          label: 'Freehand',
          backgroundColor: Colors.indigo,
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _theme,
      home: Scaffold(
      appBar: AppBar(
        title: Text("Custom Paint Demo"),),
      // Outer white container with padding
      body: IndexedStack(
      index: _selectedIndex,
      children: screens,
    ),
      bottomNavigationBar: bottomNavBar()
    ),
    );
  }
}