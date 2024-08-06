import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class custometext extends StatelessWidget {
  final String text;
  final double? fontsize;
  final Color? color;
  final FontWeight? fontweight;
  final Alignment? alignment;

  const custometext(
      {Key? key,
      required this.text,
      this.fontsize,
      this.color,
      this.fontweight,
      this.alignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontsize,
          color: color,
          fontWeight: fontweight,
        ),
      ),
    );
  }
}
