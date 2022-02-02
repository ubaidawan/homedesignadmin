import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homedesignadmin/Screens/Login.dart';

import '../global.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  navigate() async {
    await Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) => Login()));
    });
  }

  initi() async {
    Timer(
      Duration(seconds: 2),
          () {
        navigate();
      },
    );
  }

  @override
  void initState() {
    initi();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              // image: DecorationImage(
              //   image: AssetImage("assets/wall.png"),
              //   fit: BoxFit.fill,
              // )
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/frontlogo.png',color: Colors.white.withOpacity(0.7), colorBlendMode: BlendMode.modulate,),
                  SizedBox(height: 80,),
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}



