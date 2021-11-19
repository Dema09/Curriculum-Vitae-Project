import 'dart:io';

import 'package:dummy_project_for_exercise/body/body.dart';
import 'package:dummy_project_for_exercise/home_screen/menu.dart';
import 'package:dummy_project_for_exercise/home_screen/welcome_page.dart';
import 'package:dummy_project_for_exercise/widget/bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
          title: Center(
              child: Text(
                'My Portfolio',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Castoro',
                    color: Colors.white
                ),
              )
          )
      ),
      body:
          WelcomePage(),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

