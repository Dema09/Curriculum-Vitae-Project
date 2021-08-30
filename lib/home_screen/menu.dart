import 'package:dummy_project_for_exercise/content/about_me.dart';
import 'package:dummy_project_for_exercise/content/contact_me.dart';
import 'package:dummy_project_for_exercise/content/list_content.dart';
import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
       child: ListView(
         padding: EdgeInsets.zero,
         children: <Widget>[
           DrawerHeader(
              child: Text(
                'Welcome',
                style: TextStyle(color: Colors.white, fontSize: 15)
              ),
             decoration: BoxDecoration(
               color: Colors.black,
               image: DecorationImage(
                 fit: BoxFit.fill,
                 image: AssetImage('assets/images/bintang.jpg')
               )
             ),
           ),
           ListTile(
             title: Text('About me'),
             onTap: () => Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => AboutMe())),
           ),
           ListTile(
             title: Text('List Project'),
             onTap: () => Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => ListProject())),
           ),
           ListTile(
             title: Text('Contact Me'),
             onTap: () => Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => ContactMe())),
           ),
         ]
       )
    );
  }

}