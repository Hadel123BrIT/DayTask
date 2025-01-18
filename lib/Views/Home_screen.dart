import 'dart:io';
import 'package:day_tasks/Core/constant/customText.dart';
import 'package:day_tasks/Core/constant/font.dart';
import 'package:day_tasks/Views/Profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../Core/constant/color.dart';
import 'Messages/chat_messages.dart';

class Home_Screen extends StatefulWidget {
   Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  Widget customCompleteTask() => Container(
    width: 200,
    height: 200,
    decoration: BoxDecoration(
        color: Colors.grey[300],
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          customText(text: "Day Task Mobile Applicition",
              fontfamily: fontFamily1,
              fontsize: 22,
              bold: true,
              color: color_title,
              max: 3,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(child: customText(text: 'Team member', fontfamily: fontFamily2, fontsize: 14, bold: false, color: Colors.grey, max: 1,)),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 9,
                        backgroundColor: Colors.grey[400],
                        child: Icon(Icons.person,
                          size: 10,
                          color: Colors.grey[300],
                        )  ,
                      ),
                      CircleAvatar(
                        radius: 9,
                        backgroundColor: Colors.grey[400],
                        child: Icon(Icons.person,
                          size: 10,
                          color: Colors.grey[300],
                        )  ,
                      ),
                      CircleAvatar(
                        radius: 9,
                        backgroundColor: Colors.grey[400],
                        child: Icon(Icons.person,
                          size: 10,
                          color: Colors.grey[300],
                        )  ,
                      ),
                      CircleAvatar(
                        radius: 9,
                        backgroundColor: Colors.grey[400],
                        child: Icon(Icons.person,
                          size: 10,
                          color: Colors.grey[300],
                        )  ,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(child: customText(text: 'completed', fontfamily: fontFamily2, fontsize: 14, bold: false, color: Colors.grey, max: 1,)),
              customText(text: '100%', fontfamily: fontFamily2, fontsize: 14, bold: false, color: Colors.grey, max: 1,),

            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 7,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey[400],
            ),

          ),
        ],
      ),
    ),
  );
  Widget customOngoingTask() => Container(
    width: 220,
    height: 190,
    decoration: BoxDecoration(
    color: Colors.grey[300],
  ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
          children: [
            Expanded(
              child: customText(text: "Day Task Mobile Applicition",
                fontfamily: fontFamily1,
                fontsize: 22,
                bold: true,
                color: color_title,
                max: 3,
              ),
            ),
          ],
        ),
        SizedBox( height: 10, ),
        Row(
          children: [
            customText(text: 'Team member',
              fontfamily: fontFamily2,
              fontsize: 14,
              bold: false,
              color: Colors.grey,
              max: 1,
            ),
          ],
        ),
        SizedBox(height: 10,),
        Row(
            children: [
              CircleAvatar( radius: 9, backgroundColor: Colors.grey[400],
              child: Icon(Icons.person, size: 10, color: Colors.grey[300],
              ) ,
            ),
              CircleAvatar(
                radius: 9,
                backgroundColor: Colors.grey[400],
                child: Icon(Icons.person, size: 10, color: Colors.grey[300],
                ) ,
              ),
              CircleAvatar( radius: 9, backgroundColor: Colors.grey[400],
                child: Icon(Icons.person, size: 10, color: Colors.grey[300],
                ) ,
              ),
            ],
          ),
        SizedBox(height: 10,),
        Row(
          children: [
            Expanded(
              child: customText(text: "Due on: 21 March ",
                  fontfamily: fontFamily2, fontsize: 14, bold: false, color: Colors.grey, max:1
              ),
            ),
          ],
        ),
      ],
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return  SafeArea(
      child: Scaffold(
        bottomNavigationBar: NavigationBar(
          height: 70,
          elevation: 0.0,
          selectedIndex: 0,
          destinations: [
            NavigationDestination(icon: IconButton(onPressed: (){
              Get.to(Home_Screen());
            },
                icon: Icon(Icons.home_filled)),
                label: "Home"),
            NavigationDestination(icon: IconButton(onPressed: (){
              Get.to(chat_messages());
            },
                icon: Icon(Icons.chat_rounded)),
                label: "Chat"),
            NavigationDestination(
              icon: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: 60,
                  width: 60,
                  color: springYellow,
                  child: Center(
                    child: Icon(
                      Icons.add_box_outlined,
                      size: 35,
                    ),
                  ),
                ),
              ),
              label: '',
            ),
            NavigationDestination(icon: IconButton(onPressed: (){

            },
                icon: Icon(Icons.calendar_month_rounded)),
                label: "Calender"),
            NavigationDestination(icon: IconButton(onPressed: (){

            },
                icon: Icon(Icons.notifications_active)),
                label: "Notifications"),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customText(text: "welcome back",
                            fontfamily: fontFamily2,
                            fontsize: 15,
                            bold: true,
                            color: springYellow,
                            max: 1
                        ),
                        customText(text: "Hadel smeer",
                            fontfamily: fontFamily1,
                            fontsize: 25,
                            bold: true,
                            color: color_title,
                            max:1
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: (){
                        Get.to(Profile_Screen());
                      },
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey[300],
                        child: Icon(Icons.person,
                          color: Colors.grey,
                        )  ,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Expanded(child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.search,
                          color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          customText(text: "Search tasks",
                              fontfamily: fontFamily2,
                              fontsize: 15,
                              bold: true,
                              color: Colors.grey,
                              max: 1),
                        ],
                      ),
                    ),
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    alignment: Alignment.bottomRight,
                    decoration: BoxDecoration(
                      color: springYellow,
                    ),
                    child: Center(child: Icon(Icons.filter_list)),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: customText(text: "Completed Tasks",
                        fontfamily: fontFamily2,
                        fontsize: 20,
                        bold: true,
                        color: color_title,
                        max:1
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: customText(text: "see all",
                        fontfamily: fontFamily2,
                        fontsize: 20,
                        bold: true,
                        color: springYellow,
                        max:1
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => customCompleteTask(),
                  separatorBuilder: (context, index) => SizedBox(width: 15),
                  itemCount: 15,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: customText(text: "Ongoing Projects",
                        fontfamily: fontFamily2,
                        fontsize: 20,
                        bold: true,
                        color: color_title,
                        max:1
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    child: customText(text: "see all",
                        fontfamily: fontFamily2,
                        fontsize: 20,
                        bold: true,
                        color: springYellow,
                        max:1
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
               // width: 200,
                height: 160,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => customOngoingTask(),
                  separatorBuilder: (context, index) => SizedBox(height: 15),
                  itemCount: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
