import 'package:ecommerce_checkout/custom_widgets/customtext.dart';
import 'package:flutter/material.dart';

class SocialLogin extends StatelessWidget {
  final String text;
  final String imageName;
  final Function onPress;

  const SocialLogin(
      {Key? key,
      required this.text,
      required this.imageName,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress(),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(height: 50, width: 50, child: Image.asset(imageName)),
          const SizedBox(width: 70),
          custometext(
            text: text,
            fontsize: 14,
            fontweight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
