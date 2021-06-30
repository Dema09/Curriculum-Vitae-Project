import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    //for disable 'debug' label at the top-right corner
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20.0,
              foregroundImage: NetworkImage('https://picsum.photos/200/300'),
            )
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Text(
        'Hello fufufu...',
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'Castoro',
        )
      )
    ),
  ));
}

