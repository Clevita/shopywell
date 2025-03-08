import 'package:get/get.dart';

import '../controllers/startepage_controller.dart';

class StartepageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
       StartepageController(),
    );
  }
}
