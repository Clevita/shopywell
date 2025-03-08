import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shopywell/Colors.dart';

import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({super.key});
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colours().primary_backgroundcolor,
        child: Center(child: Image.asset("assets/images/POS-LOGO 2.png"),));
  }
}
