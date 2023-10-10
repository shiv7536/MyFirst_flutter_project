import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:totu/TotalVisit.dart';

class Details extends StatefulWidget {
  Details({required this.index, Key? key}) : super(key: key);
  int index;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.indigo,
                )),
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              'Details',
              style: GoogleFonts.poppins(
                  color: Colors.deepPurple, fontWeight: FontWeight.bold),
            )),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Image(image: AssetImage('assets/image.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Container(
              height: 50,
              alignment: Alignment.center,
              child: Text('DETAILS',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold)),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.indigo,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: 'Merchant Name : ${widget.index}',
                  hintStyle: GoogleFonts.poppins(color: Colors.black45)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
              top: 20,
            ),
            child: TextField(
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: 'Merchant Mobile No.${widget.index}',
                  hintStyle: GoogleFonts.poppins(color: Colors.black45)),
            ),
          ),

              Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
              top: 20,
            ),
            child: TextField(
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: 'Firm ${widget.index}',
                  hintStyle: GoogleFonts.poppins(color: Colors.black45)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
              left: 20,
              top: 20,
            ),
            child: TextField(
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  hintText: 'Address ${widget.index}',
                  hintStyle: GoogleFonts.poppins(color: Colors.black45)),
            ),
          ),
        ])));
  }
}
