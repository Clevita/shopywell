import 'package:get/get.dart';

import '../controllers/other_splashscreens_controller.dart';

class OtherSplashscreensBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
       OtherSplashscreensController(),
    );
  }
}
