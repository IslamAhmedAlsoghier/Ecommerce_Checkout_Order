//import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:ecommerce_checkout/constants/colors.dart';
import 'package:ecommerce_checkout/view/SecondScreen.dart';
import 'package:ecommerce_checkout/custom_widgets/customtext.dart';
import 'package:ecommerce_checkout/custom_widgets/epass_login.dart';
import 'package:ecommerce_checkout/view/socialLoginButton.dart';
import 'package:ecommerce_checkout/view_model/authViewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
//mport 'package:get/get.dart';
//import 'package:get/get.dart';

class Login extends GetWidget<AuthModelView> {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(197, 219, 38, 63),
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: const Color.fromARGB(197, 219, 38, 63)),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              //----------------------------Welcom And sign In to Continue----------------------------
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      custometext(
                        text: 'Welcome ,',
                        fontsize: 35,
                        color: Colors.black,
                        fontweight: FontWeight.bold,
                      ),
                      custometext(
                        text: 'Sign in to Continue',
                        fontsize: 18,
                        color: Colors.grey,
                        alignment: Alignment.topLeft,
                      ),
                    ],
                  ),
                  //-----------------------------------------------------Sign Up---------------------
                  custometext(
                      text: 'Sign Up', fontsize: 25, color: primaryColorApp),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              //-------------------------------Email Login--------------------------------------------
              const emailPassLogin(
                text: 'Email',
                hint: 'example@example.com',
                //icon: Icon(Icons.email),
              ),
              const SizedBox(
                height: 15,
              ),
              //-------------------------------Password Login--------------------------------------------
              const emailPassLogin(
                text: 'Password',
                hint: 'enter your Password',
              ),

              const SizedBox(
                height: 15,
              ),
              //-------------------------------------------------Forget Text---------------------------------
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  custometext(
                    text: 'Forget Password',
                    alignment: Alignment.topRight,
                    fontsize: 12,
                    fontweight: FontWeight.bold,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              //----------------------------------------------SIGN IN Button------------------------
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(primaryColorApp),
                ),
                child: const custometext(
                    text: 'Sign IN', fontsize: 15, color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              const custometext(
                text: '-OR-',
                fontsize: 20,
                // fontweight: FontWeight.bold,
              ),
              const SizedBox(
                height: 40,
              ),
              //-------------------------------------Sign in with Facebook--------------------------
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Container(
                        height: 50,
                        width: 50,
                        child: Image.asset('assets/F.png')),
                    const SizedBox(width: 70),
                    const custometext(
                      text: 'Sign in with Facebook',
                      fontsize: 14,
                      fontweight: FontWeight.bold,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //-------------------------------------Sign in with Google--------------------------
              ElevatedButton(
                onPressed: () {
                  controller.googleSignIn();
                },
                child: Row(
                  children: [
                    Container(
                        height: 50,
                        width: 50,
                        child: Image.asset('assets/G.png')),
                    const SizedBox(width: 70),
                    const custometext(
                      text: 'Sign in with Google',
                      fontsize: 14,
                      fontweight: FontWeight.bold,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
