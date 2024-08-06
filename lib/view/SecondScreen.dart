import 'package:ecommerce_checkout/constants/colors.dart';
import 'package:ecommerce_checkout/custom_widgets/customtext.dart';
import 'package:ecommerce_checkout/view/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second page'),
      ),
      body: Center(
          child: Column(
        children: [
          const Text('Second Screen'),
          // ElevatedButton(
          //   onPressed: () {
          //     // Future.delayed(Duration.zero, () {
          //     //   Get.to(() => Login());
          //     // });
          //   },
          //   style: ButtonStyle(
          //     backgroundColor: WidgetStatePropertyAll(primaryColorApp),
          //   ),
          //   child: custometext(
          //       text: '<- Backe', fontsize: 15, color: Colors.black),
          // ),
        ],
      )),
    );
  }
}
