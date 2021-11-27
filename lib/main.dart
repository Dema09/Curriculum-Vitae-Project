import 'package:dummy_project_for_exercise/home_screen/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
    //for disable 'debug' label at the top-right corner
}

class MyApp extends StatelessWidget{
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      home: HomePage(_selectedIndex),
    );
  }
}

