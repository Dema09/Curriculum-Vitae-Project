
import 'dart:ui';

import 'package:dummy_project_for_exercise/constant/constant.dart';
import 'package:dummy_project_for_exercise/widget/text_widget.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget{

  @override
  _WelcomePage createState() => _WelcomePage();

}

class _WelcomePage extends State<WelcomePage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Stack(
        children: [
          Container(
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.transparent, Colors.transparent, Colors.black],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0, 0.1, 0.4, 1]
                ),
          ),
        child: Image.asset(
            'assets/images/Foto_Semi_Formal.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
        )
      ),
          Container(
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(text: myName, fontFamily: roadgeek, fontSize: 32, fontColor: whiteColor, fontWeight: FontWeight.bold),
                TextWidget(text: fullStackMobileDeveloper, fontFamily: roadgeek, fontSize: 16, fontColor: whiteColor)
              ],
            )
          ),
        ],
      )
    );
  }

}
