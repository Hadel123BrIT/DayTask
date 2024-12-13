import 'package:day_tasks/constant/customText.dart';
import 'package:day_tasks/constant/font.dart';
import 'package:flutter/material.dart';
import 'color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onTap});
  final String? text;
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      color: springYellow,
      child: InkWell(
         onTap: onTap!(),
        child:customText(text: text!,
            fontfamily: fontFamily2,
            fontsize: 25,
            bold: true,
            color: color_text,
        ),
      ),
    );
  }
}
