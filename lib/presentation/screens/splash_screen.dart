import 'dart:async';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          // cambiar icono fitness_center por el icono de figma
          Icons.fitness_center,
          color: Colors.white,
          size: 100.0,
        ),
        SizedBox(height: 20.0),
        Text(
          'Bienvenidos a GYMMASTER',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ])),
    );
  }
}
