import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopywell/Colors.dart';
import 'package:shopywell/app/modules/other_splashscreens/views/splashscreen1.dart';
import 'package:shopywell/app/modules/other_splashscreens/views/splashscreen2.dart';
import 'package:shopywell/app/modules/other_splashscreens/views/splashscreen3.dart';
import 'package:shopywell/app/routes/app_pages.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/other_splashscreens_controller.dart';

class OtherSplashscreensView extends GetView<OtherSplashscreensController> {
  const OtherSplashscreensView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, 
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colours().primary_backgroundcolor,
        child: Stack(children: [
          PageView(
            onPageChanged: (value) {
              print(value);
              controller.pageindex.value = value;
            },
            controller: controller.pagecontroller,
            children: [
              SplashScreen1(context),
              SplashScree2(context),
              SplashScree3(context)
            ],
          ),
          //dot indicator

          Container(
              alignment: Alignment(0, 0.85),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Obx(() => controller.pageindex.value != 0
                      ? TextButton(
                          onPressed: () {
                            controller.previousPage();
                          },
                          child: Text("Prev",
                              style: GoogleFonts.montserrat(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)))
                      : SizedBox()),
                  SmoothPageIndicator(
                      effect: ExpandingDotsEffect(
                          dotHeight: 10,
                          dotWidth: 10,
                          spacing: 16,
                          activeDotColor: Colors.black),
                      controller: controller.pagecontroller,
                      count: 3),
                  Obx(() => controller.pageindex.value != 2
                      ? TextButton(
                          onPressed: () {
                            controller.nextPage();
                          },
                          child: Text("Next",
                              style: GoogleFonts.montserrat(
                                  color: Colours().redcolor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)))
                      : TextButton(
                          onPressed: () {
                           Get.offAndToNamed(Routes.AUTHENTICATION);
                          },
                          child: Text("Get Started",
                              style: GoogleFonts.montserrat(
                                 color: Colours().redcolor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)))),
                ],
              ))
        ]),
      ),
    );
  }
}
