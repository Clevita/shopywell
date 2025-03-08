import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopywell/Colors.dart';
import 'package:shopywell/app/modules/other_splashscreens/controllers/other_splashscreens_controller.dart';

Widget Appbar_splashscreen({required int pagenumber}){
  OtherSplashscreensController controller=Get.find();
  return  Padding(
            padding: const EdgeInsets.all(23),
            child: Container(
              height: 22,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: pagenumber.toString(),
                        style: GoogleFonts.montserrat(
                            color: Colours().primary_backgroundcolor_text,
                            fontSize: 18,
                            fontWeight: FontWeight.w600)),
                    TextSpan(
                        text: '/3',
                        style: GoogleFonts.montserrat(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w600))
                  ])),
                  //skip button
                  TextButton(
                      onPressed: () {
                        controller.nextPage();
                      },
                      child: Text("Skip",
                          style: GoogleFonts.montserrat(
                              color: Colours().primary_backgroundcolor_text,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)))
                ],
              ),
            ),
          );
}