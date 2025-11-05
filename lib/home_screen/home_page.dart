
import 'dart:ui';

import 'package:dummy_project_for_exercise/constant/constant.dart';
import 'package:dummy_project_for_exercise/widget/text_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget{

  @override
  _WelcomePage createState() => _WelcomePage();

}

class _WelcomePage extends State<WelcomePage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Color(0xff0e172a),
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            fontColor: whiteColor,
                            fontFamily: archivoBlack,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            textAlign: TextAlign.left,
                            text: myShortName
                          ),
                          SizedBox(height: 10),
                          TextWidget(
                            fontColor: whiteColor,
                            fontFamily: robotoLight,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            textAlign: TextAlign.left,
                            text: fullStackMobileDeveloper
                          ),
                          SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/images/github-142-svgrepo-com.svg',
                                  width: 28,
                                  height: 28,
                                  colorFilter: const ColorFilter.mode(whiteColor, BlendMode.clear),),
                                  SvgPicture.asset(
                                    'assets/images/linkedin-svgrepo-com.svg',
                                    width: 28,
                                    height: 28,
                                    colorFilter: const ColorFilter.mode(whiteColor, BlendMode.clear),
                                  )
                              ],
                            ),
                            )
                        ],
                    ),
                ),
                
              )
              ), Expanded(
                flex: 3,
                child: Container(
                  color: Color(0xff0e172a),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 100),
                    child: TextWidget(
                              fontColor: whiteColor,
                              fontFamily: robotoLight,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              textAlign: TextAlign.left,
                              text: aboutMeDesc,
                              textHeight: 3
                            ),
                  ),
                )
              )
          ],
        ),
    );
  }

}