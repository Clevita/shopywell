import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shopywell/Colors.dart';
import 'package:shopywell/app/modules/home/views/appbar.dart';
import 'package:shopywell/app/modules/home/views/body.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.97),
      body: SafeArea(
          child: Column(
        children: [
          //appbar of page
          HomePge_Appbar().Appbar(controller),

          SizedBox(
            height: 10,
          ),
          //searchtextbox
          HomePageBody().searchbox(),
          //  SizedBox(height: 10,),
          //text of all featured
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(17),
                child: Text(
                  "All Featured",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colours().primary_backgroundcolor_text),
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colours().primary_backgroundcolor,
                          borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        children: [
                          Text(
                            "Sort",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colours().primary_backgroundcolor_text),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Image.asset("assets/images/Vector.png")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colours().primary_backgroundcolor,
                          borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        children: [
                          Text(
                            "Filter",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colours().primary_backgroundcolor_text),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Image.asset("assets/images/Component 2.png")
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    )
                  ],
                ),
              )
            ],
          ),
          /////
          ///Categories
          HomePageBody().category(),

          Expanded(
            child: Container(
              // color: Colors.blue,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      // color: Colors.black,
                      margin: EdgeInsets.all(30),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "assets/images/Group 33731.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "assets/images/deal of the day.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    //  products
                    HomePageBody().products(),
                    //ads
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "assets/images/Group 33767.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "assets/images/mac.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        "assets/images/deal of the day 2.png",
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
