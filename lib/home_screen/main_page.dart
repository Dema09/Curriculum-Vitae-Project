import 'dart:io';

import 'package:dummy_project_for_exercise/content/about_me.dart';
import 'package:dummy_project_for_exercise/content/contact_me.dart';
import 'package:dummy_project_for_exercise/content/portfolio.dart';
import 'package:dummy_project_for_exercise/home_screen/home_page.dart';
import 'package:dummy_project_for_exercise/widget/bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{

  final int selectedIndex;
  @override
  _HomePageState createState() => _HomePageState();

  HomePage(this.selectedIndex);
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;

    final tabs = [
      WelcomePage(),
      AboutMe(),
      Portfolio(),
      ContactMe()
    ];

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
          title: Center(
              child: Text(
                'My Portfolio',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: 'Roadgeek'
                ),
              )
          )
      ),
      body: tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

