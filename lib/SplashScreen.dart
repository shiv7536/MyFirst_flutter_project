import 'dart:async';

import 'package:flutter/material.dart';
import 'package:totu/Details.dart';
import 'package:totu/HomeScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _SplashScreenState createState() => _SplashScreenState();
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Tortuga',
                  style:
                  GoogleFonts.shrikhand(fontSize: 50, color: Colors.white)),
              Text(
                'RELIABLE ENERGY , EVERY TIME',
                style: GoogleFonts.poppins(fontSize: 13, color: Colors.white),
              )
            ],
          ),
        ),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              opacity: 1,
              fit: BoxFit.cover,
              image: AssetImage("assets/splash.png"),
            )),
      ),
    );
  }
}
