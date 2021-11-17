import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../config/routes/app_page.dart';
import '../config/themes/app_theme.dart';
import 'constant/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: ColorsApp.backgroundColor,
        statusBarIconBrightness: Brightness.dark));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contacts',
      theme: appThemeData,
      getPages: AppPages.routes,
      initialRoute: AppPages.initial,
    );
  }
}
