//NAME: KETAKI PALSHIKAR
//ENROLLMENT NO.: BT19CSE091

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';
void main() { runApp(MyTest());}

class MyTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Topic-1',
      theme: ThemeData(
        primaryColor: Colors.white,
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage()
      );
      
  }
}

