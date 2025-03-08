import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopywell/enumConstants.dart';


  const String stripePublishableKey="pk_test_51R0Du2FWrqfSjOoQANliwe5CDSPuR6O6HGaB28VqCBUaqUk070DF8liFvD2gURurblVWZ8u4l85NIfsMswdyr42R00mr2G5hUu";
  const String stripeSecretKey="sk_test_51R0Du2FWrqfSjOoQlFUYHdV5eIB3i0jDvfghKd6cUTUeFcx1nexxHT2Rt6DoHm4oFQA7ImizYkSMvm4ce9OEFyeY0065n6GYRf";

class Constants{
 



   static Awsome_SnackBar(
      {required double elevation,
      required String title,
      required String message,
      required String snackbar_type}) {
    var _type_content = snackbar_type == Awsome_snackbar_contentype.failure.name
        ? ContentType.failure
        : snackbar_type == Awsome_snackbar_contentype.help.name
            ? ContentType.help
            : snackbar_type == Awsome_snackbar_contentype.success.name
                ? ContentType.success
                : ContentType.warning;
    final snackBar = SnackBar(
      /// need to set following properties for best effect of awesome_snackbar_content
      elevation: elevation,
      duration: Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: title,
        message:
            message,

        /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
        contentType: _type_content,
      ),
    );
     ScaffoldMessenger.of(Get.context!)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(snackBar);
  }
}