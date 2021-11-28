import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget{

  Color color;
  double height;
  double thickness;
  double startIndent;
  double endIndent;


  DividerWidget(this.color, this.height, this.thickness, this.startIndent,
      this.endIndent);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Divider(
      color: color,
      height: height,
      thickness: thickness,
      indent: startIndent,
      endIndent: endIndent,
    );
  }
  
}