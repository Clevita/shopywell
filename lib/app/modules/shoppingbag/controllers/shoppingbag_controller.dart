import 'package:get/get.dart';
import 'package:shopywell/app/modules/home/model/mode_dealofday.dart';

class ShoppingbagController extends GetxController {
  //TODO: Implement ShoppingbagController

  final count = 0.obs;
  var model_productdata=Rxn<Listdatum>();
  var is_loading=true.obs;
  @override
  var arguement;
  void onInit() {
    arguement=Get.arguments;
    Getproductdata();
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

 Getproductdata(){
  model_productdata.value=arguement;
  is_loading.value=false;
 }
}
