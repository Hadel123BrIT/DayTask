import 'package:day_tasks/Core/constant/color.dart';
import 'package:day_tasks/Core/constant/customText.dart';
import 'package:day_tasks/Core/constant/font.dart';
import 'package:day_tasks/Views/Home/Create%20New%20Task_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TaskDetailsScreen extends StatelessWidget {
   TaskDetailsScreen({super.key});
   Widget getAllTasks()=> Padding(
     padding: const EdgeInsets.symmetric(
         vertical: 8,
         horizontal: 20
     ),
     child: Container(
       height: 50,
       color: Colors.grey[300],
       child: Padding(
         padding: const EdgeInsets.all(10.0),
         child: Row(
           children: [
             Expanded(
               child: customText(text: "User Interview",
                 fontfamily: fontFamily2,
                 fontsize: 17,
                 bold: false,
                 color: color_title,
                 max: 1,
               ),
             ),
             Container(
                 color:springYellow,
                 width: 43,
                 height: 45,
                 child: Icon(Icons.check_circle_outline)),
           ],
         ),
       ),
     ),
   );
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 70,
        child: InkWell(
          onTap: (){
            Get.to(createNewTask());
          },
          child: Container(
            height: 70,
            color: springYellow,
            child: Center(
              child: customText(text: "Add Task",
                  fontfamily: fontFamily2,
                  fontsize: 20,
                  bold: true,
                  color: color_title,
                  max: 1),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(Icons.arrow_back),
        title: Center(
          child: customText(
            text: "Task Details",
            fontfamily: fontFamily2,
            fontsize: 21,
            bold: true,
            color: color_title,
            max: 1,
          ),
        ),
        actions: [
          Container(
            width: 50,
            child: Icon(Icons.mode_edit_outline_rounded),
          ),
        ],
      ),
      body:Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30,
      ),
      child: Column(
        children: [
          Center(
            child: customText(text: "Day Task Mobile Applicition",
              fontfamily: fontFamily1,
              fontsize: 18,
              bold: true,
              color: color_title,
              max: 3,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                          color:springYellow,
                          width: 50,
                          height: 50,
                          child: Icon(Icons.calendar_today)),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          customText(text: "Due Date",
                              fontfamily: fontFamily2,
                              fontsize: 15,
                              bold: true,
                              color: Colors.grey,
                              max: 1
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          customText(text: "20 June",
                              fontfamily: fontFamily2,
                              fontsize: 15,
                              bold: true,
                              color: color_title,
                              max: 1
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Container(
                          color:springYellow,
                          width: 50,
                          height: 50,
                          child: Icon(Icons.people_alt)),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          customText(text: "Project Team",
                              fontfamily: fontFamily2,
                              fontsize: 15,
                              bold: true,
                              color: Colors.grey,
                              max: 1
                          ),
                          SizedBox(
                            height: 5,
                          ),
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 20
            ),
            child: Row(
              children: [
                customText(text: "Project Details",
                    fontfamily: fontFamily2,
                    fontsize: 18,
                    bold: true,
                    color: color_title,
                    max: 1,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 20
            ),
            child: customText(text: "This project talks about how can organize your day by application which "
                "contain alot of screens helping devide your bussiness and ideas ",
              fontfamily: fontFamily2,
              fontsize: 14,
              bold: true,
              color: Colors.grey,
              max: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 20
            ),
            child: Row(
              children: [
                Expanded(
                  child: customText(text: "Project Progress",
                    fontfamily: fontFamily2,
                    fontsize: 18,
                    bold: true,
                    color: color_title,
                    max: 1,
                  ),
                ),
                CircularPercentIndicator(radius: 30,
                center: Text("60%"),
                percent: 0.6,
                progressColor: springYellow,
                  lineWidth: 5,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 20
            ),
            child: Row(
              children: [
                customText(text: "All Tasks",
                  fontfamily: fontFamily2,
                  fontsize: 18,
                  bold: true,
                  color: color_title,
                  max: 1,
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => getAllTasks(),
              separatorBuilder: (context, index) => SizedBox(height: 4),
              itemCount: 15,
            ),
          ),
        ],
      ),
    ) ,
    );
  }
}
