import 'package:get/get.dart';

import '../controllers/shoppingbag_controller.dart';

class ShoppingbagBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
       ShoppingbagController(),
    );
  }
}
