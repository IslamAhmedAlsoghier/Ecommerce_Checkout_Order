import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'customtext.dart';

class emailPassLogin extends StatelessWidget {
  final String text;
  final String hint;
  final Icon? icon;

  // TextEditingController ?controller = TextEditingController();

  const emailPassLogin(
      {Key? key, required this.text, required this.hint, this.icon
      // required this.controller
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        custometext(
          text: text,
          fontsize: 20,
          fontweight: FontWeight.bold,
        ),
        TextField(
          //cursorColor: Colors.blueAccent,
          decoration: InputDecoration(
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  borderSide: BorderSide(strokeAlign: 10, width: 10)),
              icon: icon,
              hintText: hint,
              hintStyle: TextStyle(
                color: Colors.grey,
              )),
        )
      ],
    );
  }
}
