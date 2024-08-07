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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GetBuilder<AuthModelView>(
            init: AuthModelView(),
            builder: (value) => Text('${value.count}'),
          ),
          GetBuilder<AuthModelView>(
            init: AuthModelView(),
            builder: (value) => ElevatedButton(
              onPressed: value.increament,
              child: const Text('+'),
            ),
          ),
        ],
      ),
    );
  }
}
