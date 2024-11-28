import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Controller/color.dart';
import '../Controller/customButton.dart';
import '../Controller/customTextForm.dart';

class Sign_up extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController fullName = TextEditingController();
  GlobalKey<FormState> formState=GlobalKey();
   Sign_up({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15,),
          child: ListView(
              children: [
                Form(
                  key: formState,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 35,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Create your account",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Full Name",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomTextForm(
                        prefixIcon: Icon(Icons.person),
                        suffixIcon: null,
                        validator: (val){
                          if(val==null || val.isEmpty){
                            print("it mustn't be empty");
                          }
                          return null;
                        },
                        mycontroller: fullName,
                        hinttext: "Enter Your Name",

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
                        validator: (val){
                          if(val==null || val.isEmpty){
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
                        validator: (val){
                          if(val==null || val.isEmpty){
                            print("it mustn't be empty");
                          }
                          return null;
                        },
                        hinttext: "Enter Your Password",
                        mycontroller: password,
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility_off_outlined),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top: 20, bottom: 20,left: 10),
                        child: Row(
                          children: [
                            Icon(Icons.check_box_outlined,
                              color: springYellow,
                            ),
                            SizedBox(width: 6.0,),
                            Column(
                              children: [
                                Text("I have read & ageeed to DayTask",
                                  style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                ),
                                Text("Privacy Policy, Terms & Condition",
                                      style: TextStyle(
                                        fontSize: 18,
                                         fontWeight: FontWeight.bold,
                                         color: springYellow,
                                      ),
                                ),
                              ],
                            ),
                            // Text.rich(TextSpan(
                            //     children: [
                            //   TextSpan(
                            //     text: "I have read & ageeed to DayTask ",
                            //     style: TextStyle(
                            //       color: Colors.grey,
                            //       fontSize: 18,
                            //       fontWeight: FontWeight.bold,
                            //     ),
                            //   ),
                            //   // TextSpan(
                            //   //   text: "Privacy Policy, Terms & Condition",
                            //   //   style: TextStyle(
                            //   //     fontSize: 18,
                            //   //     fontWeight: FontWeight.bold,
                            //   //     color: springYellow,
                            //   //
                            //   //   ),
                            //   // ),
                            // ])),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      CustomButton(text: 'Log in',
                        onTap: (){

                        },),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Container(
                          alignment: Alignment.center,
                          child: const Text(
                            "_________Or Continue With_________",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
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
                            Image.asset("images/4.png",width: 25,height: 25,),
                            TextButton(
                              onPressed:(){
                              },
                              child: Text("Google",
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
                        height: 20,
                      ),
                      Center(
                        child: InkWell(
                          onTap: (){
                            Get.to(Sign_up());
                          },
                          child: Text.rich(TextSpan(children: [
                            TextSpan(text: "Already you have an account?",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: "Log in",
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
              ]
          ),
        )
    );
  }
}
