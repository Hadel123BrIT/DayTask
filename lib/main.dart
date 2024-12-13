import 'package:day_tasks/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(MyApp()
    // DevicePreview(
    //   enabled: !kReleaseMode, // تمكين في وضع التطوير فقط
    //   builder: (context) => MyApp(),
    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DayTasks',
      // builder: DevicePreview.appBuilder, // تضمين جهاز العرض
      // useInheritedMediaQuery: true, // استخدام الوسائط من جهاز العرض
      // locale: DevicePreview.locale(context), // استخدام الموقع من جهاز العرض
      home: SplashScreen(),
    );
  }
}