import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopywell/Colors.dart';
import 'package:shopywell/app/modules/home/controllers/home_controller.dart';
import 'package:shopywell/app/routes/app_pages.dart';

class HomePageBody {
  HomeController controller = Get.find();
  searchbox() {
    final Color searchtxt_color = Color.fromRGBO(187, 187, 187, 1);
    return Card(
      child: Container(
        height: 50,
        width: 330,
        child: TextFormField(
          style: GoogleFonts.montserrat(
              color: searchtxt_color,
              fontSize: 12,
              fontWeight: FontWeight.w500),
          controller: controller.txtx_search_controller,
          onTap: () {
            controller.txtx_search_controller.selection = TextSelection(
                baseOffset: 0,
                extentOffset:
                    controller.txtx_search_controller.value.text.length);
          },
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colours().primary_backgroundcolor),
            ),
            filled: true,
            fillColor: Colours().primary_backgroundcolor,
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colours().primary_backgroundcolor),
            ),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: Colours().primary_backgroundcolor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: Colours().primary_backgroundcolor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: Colours().primary_backgroundcolor)),
            prefixIcon: Icon(
              Icons.search,
              color: searchtxt_color,
            ),
            suffixIcon: Icon(
              Icons.mic,
              color: searchtxt_color,
            ),
            label: Text("Search any Product.."),
            labelStyle: GoogleFonts.montserrat(
                color: searchtxt_color,
                fontSize: 14,
                height: 2,
                fontWeight: FontWeight.w500),
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
          ),
        ),
      ),
    );
  }

  category() {
    return Container(
      height: 80,
      // color: Colors.blueAccent,
      child: Obx(() => controller.is_loading.value == true
          ? CircularProgressIndicator()
          : SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0;
                      i <
                          controller.model_categorydata.value!.listcategorydata
                              .length;
                      i++)
                    Container(
                      width: 100,
                      child: Column(
                        children: [
                          Image.network(
                            controller.model_categorydata.value!
                                .listcategorydata[i].image
                                .toString(), // Replace with your image URL
                            width: 60,
                            height: 60,
                            fit: BoxFit
                                .fill, // Adjusts how the image fits inside the box
                          ),
                          Text(
                            controller.model_categorydata.value!
                                .listcategorydata[i].categoryname
                                .toString(),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Colours().primary_backgroundcolor_text),
                          ),
                        ],
                      ),
                    )
                ],
              ))),
    );
  }

  products() {
    return Container(
        height: 300,
        child: Obx(
          () => controller.is_loading.value == true
              ? CircularProgressIndicator()
              : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (int i = 0;
                          i <
                              controller
                                  .model_dealofdayprdt.value!.listdata.length;
                          i++)
                        GestureDetector(onTap: () {
                          print(controller.model_dealofdayprdt.value!.listdata[i].title);
                          Get.toNamed(Routes.SHOPPINGBAG,arguments: controller.model_dealofdayprdt.value!.listdata[i]);
                        },
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              height: 280,
                              width: 190,
                              color: Colours().primary_backgroundcolor,
                              child: Column(
                                children: [
                                  Image.network(
                                    controller.model_dealofdayprdt.value!
                                        .listdata[i].image
                                        .toString(), // Replace with your image URL
                                    width: 190,
                                    height: 130,
                                    fit: BoxFit
                                        .fill, // Adjusts how the image fits inside the box
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        controller.model_dealofdayprdt.value!
                                            .listdata[i].title
                                            .toString(),
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                            color: Colours()
                                                .primary_backgroundcolor_text),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(alignment: Alignment.centerLeft,
                                      child: Text(
                                        controller.model_dealofdayprdt.value!
                                            .listdata[i].caption
                                            .toString(),
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 11,
                                            color: Colours()
                                                .primary_backgroundcolor_text),
                                      ),
                                    ),
                                  ),
                                   Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Align(
                                        alignment: Alignment.centerLeft,child:  Text(
                                    controller.model_dealofdayprdt.value!
                                        .listdata[i].price
                                        .toString(),
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                        color: Colours()
                                            .primary_backgroundcolor_text),
                                  ))),
                                  Padding(
                                    padding: const EdgeInsets.only(left:  8.0),
                                    child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8, top: 2),
                                              child: Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  controller.model_dealofdayprdt
                                                      .value!.listdata[i].orgprice
                                                      .toString(),
                                                  style: GoogleFonts.montserrat(
                                                      fontWeight: FontWeight.w300,
                                                      fontSize: 13,
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Colours().greycolor),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              controller.model_dealofdayprdt
                                                  .value!.listdata[i].discount
                                                  .toString(),
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 10,
                                                  color: Colours().redcolor),
                                            )
                                          ],
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:  8.0),
                                    child: Align(alignment: Alignment.centerLeft, child: Image.asset("assets/images/Group 33755.png")),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                    ],
                  )),
        ));
  }
}
