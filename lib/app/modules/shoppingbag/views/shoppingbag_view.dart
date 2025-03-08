import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shopywell/Colors.dart';
import 'package:shopywell/services/stripeservices.dart';

import '../controllers/shoppingbag_controller.dart';

class ShoppingbagView extends GetView<ShoppingbagController> {
  const ShoppingbagView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 130,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            color: Colors.grey.withOpacity(0.4)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\$12 USD",
                  style: GoogleFonts.montserrat(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  "View Details",
                  style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colours().redcolor),
                ),
              ],
            ),
            Container(
              height: 50,
              width: 240,
              decoration: BoxDecoration(
                  color: Colours().redcolor,
                  borderRadius: BorderRadius.all(Radius.circular(4))),
              child: ElevatedButton(
                onPressed: () {
                  StripeService.instance.MakePayment();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colours().redcolor,
      
                  // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
                child: Center(
                  child: Text(
                    "Make Pyment",
                    style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: Colours().primary_backgroundcolor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //appbar
            Container(
              height: 80,
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: LineIcon(
                        LineIcons.angleLeft,
                        color: Colors.black,
                        size: 30,
                      )),
                  Text(
                    "Shopping Bag",
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colours().primary_backgroundcolor_text),
                  ),
                  IconButton(onPressed: () {}, icon: LineIcon(LineIcons.heart)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                alignment: Alignment.centerLeft,
                // color: Colors.amber,
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      width: 190,
                      height: 210,
                      child: Image.network(
                        controller.model_productdata.value!.image.toString(),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Expanded(
                        child: Container(
                      height: 200,
                      // color: Colors.amber,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            controller.model_productdata.value!.title
                                .toString(),
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          Text(
                            "Checked Single-Breasted Blazer",
                            style: GoogleFonts.montserrat(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/Size No..png",
                                width: 80,
                                height: 50,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                "assets/images/Qty No..png",
                                width: 80,
                                height: 50,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Delivery by ".toString(),
                                style: GoogleFonts.montserrat(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "10 May 2XXX".toString(),
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ],
                          )
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
