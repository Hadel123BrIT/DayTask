import 'package:flutter/material.dart';
import 'color.dart';
class CustomButton extends StatelessWidget {
   CustomButton({required this.text, required this.onTap});
  final String? text;
  final  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 350,
      color: springYellow,
      child: TextButton(
        onPressed:onTap!(),
        child: Text(text!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}