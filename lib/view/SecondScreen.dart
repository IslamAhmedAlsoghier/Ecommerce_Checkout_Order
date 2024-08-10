import 'package:ecommerce_checkout/constants/colors.dart';
import 'package:ecommerce_checkout/custom_widgets/customtext.dart';
import 'package:ecommerce_checkout/view/login.dart';
import 'package:ecommerce_checkout/view_model/authViewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthModelView authModelView = Get.put(AuthModelView());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GetX<AuthModelView>(
            init: AuthModelView(),
            builder: (value) => Text('${value.count.value}'),
          ),
          ElevatedButton(
            onPressed: authModelView.increament,
            child: const Text('+'),
          ),
        ],
      ),
    );
  }
}
