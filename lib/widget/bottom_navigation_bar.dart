import 'package:dummy_project_for_exercise/content/about_me.dart';
import 'package:dummy_project_for_exercise/content/contact_me.dart';
import 'package:dummy_project_for_exercise/content/portfolio.dart';
import 'package:dummy_project_for_exercise/home_screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget{
  @override
  _BottomNavigationBarState createState() => _BottomNavigationBarState();

}

int _selectedIndex = 0;

class _BottomNavigationBarState extends State<BottomNavigation>{


@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color(0xFF92949D),
        selectedItemColor: Colors.white,
        items:[
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'About Me', icon: Icon(Icons.account_circle)),
          BottomNavigationBarItem(label: 'Portfolio', icon: Icon(Icons.article)),
          BottomNavigationBarItem(label: 'Contact Me', icon: Icon(Icons.contact_page)),
        ],
        onTap: (index){
            setState((){
               _selectedIndex = index;
            });
            switch(index){
              case 0:
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomePage()));
                break;
                
              case 1:
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AboutMe()));
                break;

              case 2:
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Portfolio()));
                break;

              case 3:
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ContactMe()));
                break;

            }
        }
      )
    );
  }
}
