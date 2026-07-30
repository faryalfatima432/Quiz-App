import 'package:assi6/splash.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Routing());
}

class Routing extends StatelessWidget {
  const Routing({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash()
      ),
    );
  }
}
