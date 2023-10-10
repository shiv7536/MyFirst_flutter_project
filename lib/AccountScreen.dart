import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
            color: Colors.indigo,
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Account',
            style: GoogleFonts.poppins(
                color: Colors.deepPurple, fontWeight: FontWeight.bold),
          )),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Image(image: AssetImage("assets/account.png")),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Shiv Sharma',
                style: GoogleFonts.poppins(
                    color: Color.fromRGBO(134, 134, 134, 1), fontSize: 20),
              ),
              alignment: Alignment.centerLeft,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromRGBO(39, 71, 146, 1)),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                '+917536078910',
                style: GoogleFonts.poppins(
                    color: Color.fromRGBO(134, 134, 134, 1), fontSize: 20),
              ),
              alignment: Alignment.centerLeft,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromRGBO(39, 71, 146, 1)),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'QA Manager',
                style: GoogleFonts.poppins(
                    color: Color.fromRGBO(134, 134, 134, 1), fontSize: 20),
              ),
              alignment: Alignment.centerLeft,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromRGBO(39, 71, 146, 1)),
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 50,
              alignment: Alignment.center,
              child: Text('Logout',
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
          SizedBox(height: 50),
          Text('Version 1.0.0',
              style: GoogleFonts.poppins(
                  fontSize: 18, color: Color.fromRGBO(39, 71, 146, 1))),
        ],
      ),
    );
  }
}
