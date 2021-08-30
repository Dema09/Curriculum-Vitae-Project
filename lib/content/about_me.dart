import 'package:avatar_view/avatar_view.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.black,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 35, 0, 0),
                child: AvatarView(
                  radius: 60,
                  borderWidth: 8,
                  borderColor: Colors.black,
                  avatarType: AvatarType.CIRCLE,
                  backgroundColor: Colors.red,
                  imagePath: "assets/images/4x6.jpg",
                  placeHolder: Container(
                    child: Icon(Icons.person, size: 50,),
                  ),
                  errorWidget: Container(
                    child: Icon(Icons.error, size: 50,),
                  ),
                ),
              ),
            ]
        )
    );
  }
  
}