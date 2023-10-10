import 'package:flutter/material.dart.';
import 'package:google_fonts/google_fonts.dart';
//import 'package:totu/NavigationBarApp.dart';
import 'package:totu/TotalVisit.dart';
import 'package:totu/Home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Tortuga',
                        style: GoogleFonts.shrikhand(
                            fontSize: 50, color: Colors.white)),
                    Text(
                      'RELIABLE ENERGY , EVERY TIME',
                      style: GoogleFonts.poppins(
                          fontSize: 13, color: Colors.white),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Mobile Number',
                          hintStyle: GoogleFonts.poppins(color: Colors.white)),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Password',
                          hintStyle: GoogleFonts.poppins(color: Colors.white)),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 370,
                        decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          'Login',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Colors.white,
                              //backgroundColor: Colors.indigo,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                  opacity: 1,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/splash.png"),
                ))));
  }
}
