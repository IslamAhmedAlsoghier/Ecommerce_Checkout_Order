import 'package:flutter/material.dart';

import 'package:ecommerce_checkout/constants/colors.dart';
import 'package:ecommerce_checkout/custom_widgets/customtext.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Function func;

  const ActionButton(
      {super.key, required this.text, this.color, required this.func});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: func(),
      style: const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(primaryColorApp),
      ),
      child: custometext(text: text, fontsize: 15, color: color),
    );
  }
}
