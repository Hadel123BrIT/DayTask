import 'package:day_tasks/views/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/color.dart';
import '../constant/customButton.dart';
import '../constant/customText.dart';
import '../constant/font.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              "images/vecteezy_vector-illustration-of-a-business-women-working-in-an-office_35644833-removebg-preview (1).png",
              width:MediaQuery.of(context).size.width * 0.9 ,
              height: MediaQuery.of(context).size.height * 0.47,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.06,
                bottom: MediaQuery.of(context).size.height * 0.06,
              ),
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: "Manage Your Task With ",
                  style: TextStyle(
                    fontFamily: fontFamily1,
                    color: color_title,
                    fontSize: 52,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "DayTask",
                  style: TextStyle(
                    fontFamily: fontFamily1,
                    fontSize: 52,
                    fontWeight: FontWeight.bold,
                    color: springYellow,
                  ),
                ),
              ])),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              color: springYellow,
              child: TextButton(
                onPressed: () {
                  Get.to(sign_in());
                },
                child: customText(
                  text: 'Lets start',
                  fontfamily: fontFamily2,
                  fontsize: 25,
                  bold: true,
                  color: color_text,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}