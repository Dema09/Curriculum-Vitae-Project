import 'package:avatar_view/avatar_view.dart';
import 'package:dummy_project_for_exercise/constant/constant.dart';
import 'package:dummy_project_for_exercise/widget/bottom_navigation_bar.dart';
import 'package:dummy_project_for_exercise/widget/divider_widget.dart';
import 'package:dummy_project_for_exercise/widget/text_widget.dart';
import 'package:flutter/material.dart';


class AboutMe extends StatefulWidget {

  var colorWhite = Colors.white;

  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe>{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.black,
                child: Column(
                  children: [
                    SizedBox(height: 16),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                      child: AvatarView(
                        radius: 60,
                        borderWidth: 8,
                        borderColor: Colors.black,
                        avatarType: AvatarType.CIRCLE,
                        backgroundColor: Colors.red,
                        imagePath: "assets/images/4x6.jpg",
                        placeHolder: Container(
                          child: Icon(Icons.person, size: 50),
                        ),
                        errorWidget: Container(
                          child: Icon(Icons.error, size: 50),
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: Text(
                          'About Me',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: 'Roadgeek'
                          )
                      ),
                    ),

                    Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: DividerWidget(Colors.white, 20, 2, 10, 10)
                    ),

                    SizedBox(height: 20),

                    TextWidget(text: aboutMeDesc, fontFamily: roadgeek, fontColor: whiteColor, fontSize: 12)
                  ],
                ),
              )
          ),
          Expanded(
              flex: 2,
              child:
              Container(
                color: Colors.white,
              )
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
  
}