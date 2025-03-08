import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopywell/Colors.dart';
import 'package:shopywell/app/routes/app_pages.dart';

import '../controllers/startepage_controller.dart';

class StartepageView extends GetView<StartepageController> {
  const StartepageView({super.key});
  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).size.width - 100;
    return Scaffold(
      body:
       Stack(children: <Widget>[
        Container(
           height: MediaQuery.of(context).size.height,
             width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.transparent.withOpacity(0.2),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                
                'assets/images/unsplash_fouVDmGXoPI.png',
              ),
            ),
          ),
          // height: 350.0,
        ),
        Container(
          // height: 350.0,
          decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                  begin: FractionalOffset.center,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black87,
                  ],
                  stops: [
                    0.0,
                    5.0
                  ])),
        ),
         Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(left:40,right: 40,bottom: 10),
                  child: Container(
                    child: Text(
                      "You want Authentic, here you go!",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize: 34,
                          color: Colours().primary_backgroundcolor),
                    ),
                  ),
                ),
               
                Text(
                  "Find it here, buy it now!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color.fromRGBO(242, 242, 242, 1)),
                ),
                SizedBox(height: 40,),
               Container(
                    height: 55,
                    width: 317,
                    decoration: BoxDecoration(
                        color: Colours().redcolor,
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    child: ElevatedButton(
                      onPressed: () {
                  Get.offAllNamed(Routes.HOME);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colours().redcolor,

                        // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      ),
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.montserrat(
                              fontSize: 20,
                              color: Colours().primary_backgroundcolor,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,)
              ],
            ),
          )
      ]),  
      
    );
  }
}
