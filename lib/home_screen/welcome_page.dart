
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget{

  Color whiteColor = Colors.white;
  String firaSans = 'FiraSansCondensed-Regular';

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
            child: Image.asset(
                'assets/images/Foto_Semi_Formal.jpg',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
            ),
          ),
        ],
      )
    );
  }

}
