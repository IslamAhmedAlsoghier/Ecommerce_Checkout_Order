import 'package:ecommerce_checkout/constants/colors.dart';
import 'package:ecommerce_checkout/custom_widgets/customtext.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Function func;
  const ActionButton(
      {Key? key, required this.text, this.color, required this.func})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 40,
      child: ElevatedButton(
        onPressed: func(),
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(primaryColorApp),
        ),
        child: custometext(text: text, fontsize: 15, color: color),
      ),
    );
  }
}
