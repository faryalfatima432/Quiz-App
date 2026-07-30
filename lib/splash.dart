import 'dart:async';

import 'package:assi6/quizhome.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState(){
    super.initState();
    Timer(
        Duration(seconds: 7),
            ()=> Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Home()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.greenAccent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.black,
                  backgroundImage: AssetImage("Images/img_1.png"),
                ),
                SizedBox(height: 10,),
                Text("Quiz App",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'font1',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 220,),
                CircularProgressIndicator(),
                SizedBox(height: 10,),
                Text("23-Arid-4656",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'font2',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
