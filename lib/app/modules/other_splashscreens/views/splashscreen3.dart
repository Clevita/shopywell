import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopywell/Colors.dart';
import 'package:shopywell/app/modules/other_splashscreens/views/appbar.dart';

Widget SplashScree3(context) {
  return SafeArea(
    child: Center(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //screennumber and skip button
           Appbar_splashscreen(pagenumber: 3),
          //image  //text
          Container(
              // color: Colors.blue,
              height: MediaQuery.of(context).size.height - 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/Shopping bag-rafiki 1.png"),
                  Text("Get Your Order",style:GoogleFonts.montserrat(
                            color: Colours().primary_backgroundcolor_text,
                            fontSize: 24,
                            fontWeight: FontWeight.w800)),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                        "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
                        style: GoogleFonts.montserrat(
                            color: Colors.grey,
                            fontSize: 14,
                            height: 2.2,
                            fontWeight: FontWeight.w600)),
                  )
                ],
              ))
        ],
      ),
    ),
  );
}
