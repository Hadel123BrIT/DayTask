import 'package:day_tasks/constant/font.dart';
import 'package:day_tasks/views/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/color.dart';
import '../constant/customButton.dart';
import '../constant/customText.dart';
import '../constant/customTextForm.dart';

class sign_in extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey();
  sign_in({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05),
          child: ListView(children: [
            Form(
              key: formState,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: screenHeight * 0.05,
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  customText(
                    text: 'Welcome Back!',
                    fontfamily: fontFamily2,
                    fontsize: 30,
                    bold: true,
                    color: color_title,
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  customText(
                    text: "Email Address",
                    fontfamily: fontFamily2,
                    fontsize: 18,
                    bold: true,
                    color: color_title,
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  CustomTextForm(
                    prefixIcon: const Icon(Icons.account_box_outlined),
                    suffixIcon: null,
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return "It mustn't be empty";
                      }
                      return null;
                    },
                    mycontroller: email,
                    hinttext: "Enter Your Email",
                  ),
                  SizedBox(
                    height: screenHeight * 0.015,
                  ),
                  customText(
                    text: "Password",
                    fontfamily: fontFamily2,
                    fontsize: 18,
                    bold: true,
                    color: color_title,
                  ),
                  SizedBox(
                    height: screenHeight * 0.015,
                  ),
                  CustomTextForm(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: const Icon(Icons.visibility_off_outlined),
                    validator: (val) {
                      if (val == null || val.isEmpty) {
                        return "It mustn't be empty";
                      }
                      return null;
                    },
                    hinttext: "Enter Your Password",
                    mycontroller: password,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: screenHeight * 0.02, bottom: screenHeight * 0.02),
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  CustomButton(
                    text: 'Log in',
                    onTap: () {},
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: customText(
                      text: "___________Or Continue With_________",
                      fontfamily: fontFamily2,
                      fontsize: 15,
                      bold: true,
                      color: color_title,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    width: screenWidth * 0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "images/4.png",
                          width: screenWidth * 0.07,
                          height: screenHeight * 0.07,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: customText(
                            text: "Google",
                            fontfamily: fontFamily2,
                            fontsize: 25,
                            bold: true,
                            color: color_title,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Get.to(Sign_up());
                      },
                      child: Text.rich(TextSpan(children: [
                        const TextSpan(
                          text: "Don't have an account?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "  Sign Up",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: springYellow,
                          ),
                        ),
                      ])),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ));
  }
}
