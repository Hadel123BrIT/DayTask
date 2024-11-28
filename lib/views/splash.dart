import 'package:day_tasks/views/sign%20in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Controller/color.dart';
import '../Controller/customButton.dart';

class splash extends StatelessWidget {
  const splash({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: Column(
      children: [
         Image.asset("images/vecteezy_vector-illustration-of-a-business-women-working-in-an-office_35644833-removebg-preview (1).png",
           height: 450,
           width: 450,
         ),
         Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text.rich(TextSpan(children: [
            TextSpan(text: "Manage Your Task With ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 55,
              fontWeight: FontWeight.bold,
            ),
            ),
            TextSpan(
              text: "DayTask",
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                 color: springYellow,

              ),
            ),
          ])),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          width: 350,
          color: springYellow,
          child: TextButton(
            onPressed:(){
              Get.to(sign_in());
            },
            child: Text('Lets start',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        )

      ],
    ),
    );
  }
}
