import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget{
  String? text;
  String? fontFamily;
  double? fontSize;
  Color? fontColor;
  FontWeight? fontWeight;
  TextAlign? textAlign;


  TextWidget({this.text, this.fontFamily, this.fontSize, this.fontColor, this.fontWeight, this.textAlign});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text(
        text!,
        textAlign: textAlign,
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          color: fontColor,
          fontWeight: fontWeight,
        )
      )
    );
  }

}