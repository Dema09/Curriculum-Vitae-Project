
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget{

  Color whiteColor = Colors.white;
  String firaSans = 'FiraSansCondensed-Regular';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Spacer(),
                        Text(
                          'Hello, It \'s Me',
                          style: TextStyle(
                              color: whiteColor,
                              fontSize: 20
                          ),
                        ),
                        Text(
                            'Made Raja Adi Surya Saputra \n',
                            style: TextStyle(
                                color: whiteColor,
                                fontSize: 30,
                                fontFamily: firaSans
                            )
                        ),
                        Text(
                          'Currently graduated from Bina Nusantara University. '
                              '\nHaving interest about software development, '
                              'both front-end and back-end development. ',
                          style: TextStyle(
                            fontFamily: firaSans,
                            fontSize: 12,
                            color: whiteColor
                          )
                        ),
                        Spacer()
                      ],
                    ),
                  )
                ],
              )
            )
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.black,
            child: Image.asset('/images/Foto_Semi_Formal.jpg', fit: BoxFit.fill)
          )
          )
      ]
    );
  }
  
}