import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:shopywell/Constants.dart';
import 'package:shopywell/firebase_options.dart';

import 'app/routes/app_pages.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
    await Hive.initFlutter();
//     var box = await Hive.openBox('shopywell_localdb');
// await box.clear();
 if(!(Hive.isBoxOpen('shopywell_localdb'))){
    final taskBox = await Hive.openBox('shopywell_localdb');
 }
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  Stripe.publishableKey=stripePublishableKey;
  runApp( 
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: Routes.SPLASHSCREEN,
      getPages: AppPages.routes,
    ),
  );
}
