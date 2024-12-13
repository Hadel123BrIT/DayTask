import 'package:flutter/material.dart';


class customText extends StatelessWidget {
   customText({super.key,required this.text,
     required this.fontfamily,
     required this.fontsize,
     required this.bold,
     required this.color,
   });
  String text;
  String fontfamily;
  double fontsize;
  bool bold;
  Color color;
  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
        fontFamily:fontfamily,
        color: color,
        fontSize: fontsize,
        fontWeight: bold? FontWeight.bold:FontWeight.normal,
      ),
    );
  }
}
