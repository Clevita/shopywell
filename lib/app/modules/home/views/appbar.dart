import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopywell/app/modules/home/controllers/home_controller.dart';

class HomePge_Appbar{
  Appbar(HomeController controller){
  return Container(
    alignment: Alignment.center,
            height: 70,
            width: MediaQuery.of(Get.context!).size.width,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(onPressed: () {
                   
                }, icon: Image.asset("assets/images/Component 1.png" ,fit: BoxFit.fill, height: 30,width: 30,)),
                Center(child: Image.asset("assets/images/logoipsum-255 1.png",fit: BoxFit.fill, width: 120,)),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image.asset("assets/images/2289_SkVNQSBGQU1PIDEwMjgtMTE2 1.png"),
                ),
              ],
            ),
          );
  }
}