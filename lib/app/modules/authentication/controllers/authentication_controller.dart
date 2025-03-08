import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:shopywell/Constants.dart';
import 'package:shopywell/app/routes/app_pages.dart';
import 'package:shopywell/enumConstants.dart';

class AuthenticationController extends GetxController {
  //TODO: Implement AuthenticationController

  late TextEditingController txt_email_controller;
  late TextEditingController txt_forgotemail_controller;
  late TextEditingController txt_password_controller;
  late TextEditingController txt_password_repeat_controller;
  var is_visiblepassword = false.obs;
  var is_visiblepassword1 = false.obs;
  var is_login = true.obs;
  var is_forgetpassword = false.obs;
  final formKey = GlobalKey<FormState>();
  @override
  void onInit() {
    txt_email_controller = TextEditingController();
    txt_forgotemail_controller = TextEditingController();
    txt_password_controller = TextEditingController();
    txt_password_repeat_controller = TextEditingController();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    txt_email_controller.dispose();
    txt_forgotemail_controller.dispose();
    txt_password_controller.dispose();
    txt_password_repeat_controller.dispose();
    super.onClose();
  }

  SignIn_User() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: txt_email_controller.text,
          password: txt_password_controller.text);

      if (txt_email_controller.text == credential.user!.email) {
        Get.offAndToNamed(Routes.STARTEPAGE);
      } else {
        is_login.value = false;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        Constants.Awsome_SnackBar(
            elevation: 10,
            title: "OOPS!",
            message: "No user found for that email.",
            snackbar_type: Awsome_snackbar_contentype.failure.name);
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        Constants.Awsome_SnackBar(
            elevation: 10,
            title: "OOPS!",
            message: "Wrong password provided for that user.",
            snackbar_type: Awsome_snackbar_contentype.failure.name);
        print('Wrong password provided for that user.');
      }
    }
  }

  Future<void> User_Auth_Signup() async {
    try {
       final hive_taskdata = await Hive.box('shopywell_localdb');
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: txt_email_controller.text,
        password: txt_password_controller.text,
      );
      print(credential);
      FirebaseAuth.instance.authStateChanges().listen((User? user) {
        if (user == null) {
          print('User is currently signed out!');
        } else {
           hive_taskdata.put('authentication',  {"email":txt_email_controller.text,"password":txt_password_controller.text});
          Get.offAndToNamed(Routes.STARTEPAGE);
        }
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        Constants.Awsome_SnackBar(
            elevation: 10,
            title: "OOPS!",
            message: "The password provided is too weak.",
            snackbar_type: Awsome_snackbar_contentype.failure.name);
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        Constants.Awsome_SnackBar(
            elevation: 10,
            title: "OOPS!",
            message: "The account already exists for that email.",
            snackbar_type: Awsome_snackbar_contentype.failure.name);
      }
    } catch (e) {
      print(e);
    }
  }

  void Check_User_Validate() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      is_login.value == true ? SignIn_User() : User_Auth_Signup();
    }
  }

  Future Password_reset() async {
    if (formKey.currentState!.validate()) {
      try {
        await FirebaseAuth.instance.sendPasswordResetEmail(
            email: txt_forgotemail_controller.text.trim());
      } on FirebaseAuthException catch (e) {
        Constants.Awsome_SnackBar(
            elevation: 2,
            title: "",
            message: e.toString(),
            snackbar_type: Awsome_snackbar_contentype.failure.name);
        is_login.value = true;
      }
    }
  }
}
