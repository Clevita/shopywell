import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtherSplashscreensController extends GetxController {
  //TODO: Implement OtherSplashscreensController

   final PageController pagecontroller = PageController();
   var pageindex=0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
  nextPage() {

    pagecontroller.nextPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }

   previousPage() {
    pagecontroller.previousPage(duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
  }
 
}
