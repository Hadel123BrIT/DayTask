import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Core/constant/color.dart';
import '../../Core/constant/customText.dart';
import '../../Core/constant/customTextForm.dart';
import '../../Core/constant/font.dart';

class createNewTask extends StatefulWidget {
  const createNewTask({super.key});
  @override
  State<createNewTask> createState() => _createNewTaskState();
}

class _createNewTaskState extends State<createNewTask> {
  TextEditingController title=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(Icons.arrow_back),
        title: Center(
          child: customText(
            text: "Create New Task",
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            customText(
              text: "Task Title",
              fontfamily: fontFamily2,
              fontsize: 18,
              bold: true,
              color: color_title, max: 1,
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextForm(
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return "It mustn't be empty";
                }
                return null;
              },
              hinttext: "Hi-Fi Wireframe",
              mycontroller: title, prefixIcon: null, suffixIcon: null,
            ),
            SizedBox(
              height: 20,
            ),
            customText(
              text: "Task Details",
              fontfamily: fontFamily2,
              fontsize: 18,
              bold: true,
              color: color_title, max: 1,
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Please Enter Task Details ',
                hintStyle: TextStyle(
                  fontFamily: fontFamily2,
                  fontSize: 16,
                  color: Colors.grey[500],
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
                fillColor: Colors.grey[100],
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
                ),
              ),
              keyboardType: TextInputType.multiline,
              maxLines: null, // يسمح للنص بالتمدد لأكثر من سطر
              minLines: 3, // الحد الأدنى لعدد الأسطر
            ),
            SizedBox(
              height: 20,
            ),
            customText(
              text: "Add Team members",
              fontfamily: fontFamily2,
              fontsize: 18,
              bold: true,
              color: color_title, max: 1,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey[300],
                    height: 40,
                    width: 140,
                    child: Row(
                      children: [
                        Expanded(
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.grey[400],
                            child: Icon(Icons.person,
                              size: 10,
                              color: Colors.grey[300],
                            )  ,
                          ),
                        ),
                        Expanded(
                          child: customText(text: "Hadel",
                              fontfamily: fontFamily2,
                              fontsize: 14,
                              bold: true,
                              color: color_title,
                              max: 1
                          ),
                        ),
                        Expanded(
                            child: Icon(Icons.clear_outlined,
                            size: 20,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey[300],
                    height: 40,
                    width: 140,
                    child: Row(
                      children: [
                        Expanded(
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.grey[400],
                            child: Icon(Icons.person,
                              size: 10,
                              color: Colors.grey[300],
                            )  ,
                          ),
                        ),
                        Expanded(
                          child: customText(text: "Farah",
                              fontfamily: fontFamily2,
                              fontsize: 14,
                              bold: true,
                              color: color_title,
                              max: 1
                          ),
                        ),
                        Expanded(
                            child: Icon(Icons.clear_outlined,
                              size: 20,
                            )),
                      ],
                    ),
                  ),
                ),
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
                  child: Center(child: Icon(Icons.add_box_outlined)),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            customText(
              text: "Time & Date",
              fontfamily: fontFamily2,
              fontsize: 18,
              bold: true,
              color: color_title, max: 1,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey[300],
                    height: 40,
                    width: 140,
                    child: Row(
                      children: [
                        Container(
                          color:springYellow,
                          width: 50,
                          height: 50,
                          child: Icon(Icons.watch_later_outlined,
                            size: 20,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: customText(text: "10:00  AM",
                              fontfamily: fontFamily2,
                              fontsize: 14,
                              bold: true,
                              color: color_title,
                              max: 1
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey[300],
                    height: 40,
                    width: 140,
                    child: Row(
                      children: [
                        Container(
                          color:springYellow,
                          width: 50,
                          height: 50,
                          child: Icon(Icons.calendar_month_sharp,
                            size: 20,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          child: customText(text: "25/11/2024",
                              fontfamily: fontFamily2,
                              fontsize: 14,
                              bold: true,
                              color: color_title,
                              max: 1
                          ),
                        ),

                      ],
                    ),
                  ),
                ),


              ],
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: customText(text: "Add New",
                  fontfamily: fontFamily2,fontsize: 17,
                  bold: true,
                  color: color_title, max: 1),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                width: 300,
                height: 65,
                color: springYellow,
                child: Center(
                  child: customText(text: "Create",
                      fontfamily: fontFamily2,fontsize: 17,
                      bold: true,
                      color: color_title, max: 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
