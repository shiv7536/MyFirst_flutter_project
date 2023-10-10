import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:totu/Details.dart';

import 'AccountScreen.dart';
import 'AddVisit.dart';

class TotalVisit extends StatefulWidget {
  TotalVisit({Key? key}) : super(key: key);
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  State<TotalVisit> createState() => _TotalVisitState();
}

class _TotalVisitState extends State<TotalVisit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 20, bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(heroTag: "btn1",
                backgroundColor: Colors.indigo,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AddVisit(),));
                },
                child: Icon(Icons.add)),SizedBox(height: 5,),FloatingActionButton(heroTag: "btn2",
                backgroundColor: Colors.indigo,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AccountScreen(),));
                },
                child: Icon(Icons.account_box)),
          ],
        )

      ),

      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Total Visit',
            style: GoogleFonts.poppins(
                color: Colors.deepPurple, fontWeight: FontWeight.bold),
          )),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    child: InkWell(
                      onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context) => Details(index: index,)));},
                      child: Container(

                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black)),

                        height: 155,
                        // width: 50,

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Merchant Name :Shiv $index',
                                style: GoogleFonts.poppins(
                                    color: Colors.black38, fontSize: 16)),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Mobile No. :7536078910 $index',
                                style: GoogleFonts.poppins(
                                    color: Colors.black38, fontSize: 16)),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Firm :12152525 $index',
                                style: GoogleFonts.poppins(
                                    color: Colors.black38, fontSize: 16)),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Address :Jaipur $index',
                                style: GoogleFonts.poppins(
                                    color: Colors.black38, fontSize: 16)),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Date : dd-mm-yyyy $index ',
                                style: GoogleFonts.poppins(
                                    color: Colors.black38, fontSize: 16)),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: 20,
            )
          ],
        ),
      ),
    );
  }
}
