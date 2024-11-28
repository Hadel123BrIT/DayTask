import 'package:day_tasks/views/sign%20up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Controller/color.dart';
import '../Controller/customButton.dart';
import '../Controller/customTextForm.dart';

class sign_in extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey();
  sign_in({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(children: [
        Form(
          key: formState,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome Back!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Email Address",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextForm(
                prefixIcon: Icon(Icons.account_box_outlined),
                suffixIcon: null,
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    print("it mustn't be empty");
                  }
                  return null;
                },
                mycontroller: email,
                hinttext: "Enter Your Email",
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Password",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextForm(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility_off_outlined),
                validator: (val) {
                  if (val == null || val.isEmpty) {
                    print("it mustnot be empty");
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
                  margin: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                text: 'Log in',
                onTap: () {},
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  "___________Or Continue With_________",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "images/4.png",
                      width: 25,
                      height: 25,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Google",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Get.to(Sign_up());
                  },
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "Sign Up",
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
