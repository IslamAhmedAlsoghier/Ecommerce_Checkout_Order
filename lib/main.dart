import 'package:ecommerce_checkout/utilites/binding.dart';
import 'package:ecommerce_checkout/utilites/setFirebase.dart';
import 'package:ecommerce_checkout/view/SecondScreen.dart';
import 'package:ecommerce_checkout/view/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
//import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //setUp();
  runApp(MyApp());
}

// Future<void> setUp() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await setFirebase();
// }

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: HomeBinding(),
      home: Login(),
    );
  }
}
