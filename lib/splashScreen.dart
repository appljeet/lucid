import 'dart:async';

import 'package:flutter/material.dart';

import 'homePage.dart';
import 'images.dart';

void main() {
  runApp(new MaterialApp(
    home: new splashTimer(),
    routes: <String, WidgetBuilder>{
      '/homePage': (BuildContext context) => new homePage(),
    },
  ));
}

class splashTimer extends StatefulWidget {
  @override
  splashScreen createState() => new splashScreen();

}



class splashScreen extends State<splashTimer>{

  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, takeToHome);
  }

  void takeToHome(){
    Navigator.of(context).pushReplacementNamed('/homePage');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: new Center(
        child: Image.asset(
          'images/icon.png',
          fit: BoxFit.fitWidth,
        ),
      ),
    );


  }

}
