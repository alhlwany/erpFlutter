import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';
import 'app/tips/getStart.dart';
import 'gnr/gnrFuntion.dart';

void main() {
  debugDefaultTargetPlatformOverride=TargetPlatform.fuchsia;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new GetStart(),
      title: new Text(
        'Welcome ...',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,
            color: BlueColor, fontFamily: MyFont),
      ),

      image: new Image.asset(
          "images/logo/nh_logo.jpg",width: 220.0,height: 220.0,),
      //backgroundColor: whiteColor,
      styleTextUnderTheLoader: new TextStyle(fontFamily: MyFont),
      photoSize: 100.0,
      onClick: () => print("NAHDA PACKING"),
      loaderColor: BlueColor,// Colors.white,
    );
  }
}

class AfterSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Welcome ... ",
          style: TextStyle(
              color: Colors.white,   fontFamily: MyFont,fontSize: 50.0)),
        automaticallyImplyLeading: false,
      ),
      body: new Center(
        child: new Text(
          "Succeeded!",
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, fontFamily: MyFont),
        ),
      ),
    );
  }
}
