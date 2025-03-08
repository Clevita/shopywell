import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:shopywell/app/routes/app_pages.dart';

class SplashscreenController extends GetxController {
  //TODO: Implement SplashscreenController
  @override
  void onInit() {
         Check_authentication_and_navigate();
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

 void Check_authentication_and_navigate() async{
         final hive_taskdata = Hive.box('shopywell_localdb');
     await Future.delayed(Duration(seconds: 6),() {
      try {
         if(hive_taskdata.get('authentication')==null){
            Get.offAndToNamed(Routes.OTHER_SPLASHSCREENS); 
         }else{
            Get.offAndToNamed(Routes.STARTEPAGE);
         }
      } catch (e) {
          Get.offAndToNamed(Routes.OTHER_SPLASHSCREENS); 
      }
        
       
     },);
}
}
