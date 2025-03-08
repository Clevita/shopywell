import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopywell/Constants.dart';
import 'package:shopywell/app/modules/home/model/mode_dealofday.dart';
import 'package:shopywell/app/modules/home/model/modelcategorydata.dart';
import 'package:shopywell/enumConstants.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

 late TextEditingController txtx_search_controller;
 final FirebaseFirestore _firestore = FirebaseFirestore.instance;
 var is_loading=true.obs;
 var model_categorydata=Rxn<ModelCategorydata>();
 var model_dealofdayprdt=Rxn<ModelDealofthedayprd>();
    final PageController pagecontroller = PageController();
  @override
  void onInit() {
    txtx_search_controller=TextEditingController();
    fetchCollectionData();
    
    super.onInit();
  }

  @override
  void onReady() {
     
    super.onReady();
  }

  @override
  void onClose() {
    txtx_search_controller.dispose();
    super.onClose();
  }

//  Get_items() async{
//  
//  try {
//   //  final CollectionReference category=FirebaseFirestore.instance.collection("category");
//      final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//     QuerySnapshot querySnapshot = await _firestore.collection("category").get();
//       return querySnapshot.docs.map((doc) => {"id": doc.id, ...doc.data() as Map<String, dynamic>}).toList();
//     //  print(category.firestore.app.);

//  } catch (e) {
//   print(e.toString());
//     Constants.Awsome_SnackBar(
//             elevation: 10,
//             title: "OOPS!",
//             message: e.toString(),
//             snackbar_type: Awsome_snackbar_contentype.failure.name);
//  }
//  }
   fetchCollectionData() async {
       is_loading.value=true;
    try {
      QuerySnapshot querySnapshot_category = await _firestore.collection("category").get();
      Map<String,dynamic>  categorydata= {"listcategorydata":querySnapshot_category.docs.map((doc) => {"id": doc.id, ...doc.data() as Map<String, dynamic>}).toList()};
      model_categorydata.value=ModelCategorydata.fromJson(categorydata);
      QuerySnapshot querySnapshot_dealofday = await _firestore.collection("dealofthedayprdt").get();
      Map<String,dynamic>  dealofdaydata= {"listdata":querySnapshot_dealofday.docs.map((doc) => {"id": doc.id, ...doc.data() as Map<String, dynamic>}).toList()};
      model_dealofdayprdt.value=ModelDealofthedayprd.fromJson(dealofdaydata);
         is_loading.value=false;
      print(categorydata);
    } catch (e) {
      print("Error fetching data: $e");
     
    }
  }
}

