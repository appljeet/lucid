import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'clubs.dart';
import 'home.dart';
import 'officeHours.dart';

class homePage extends StatelessWidget{

  final controller = PageController(
    initialPage: 1,
  );



  @override
  Widget build(BuildContext context) {

    final pageView = PageView(
      controller: controller,
      children: <Widget>[
        officeHours(),
        homeState(),
        clubs(),
      ],
    );

    return pageView;


  }




}