import 'package:ezy_cv/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const EzyCVApp());
}

class EzyCVApp extends StatelessWidget {
  const EzyCVApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      title: "EZY CV",
      getPages: AppPages.routes,
    );
  }
}
