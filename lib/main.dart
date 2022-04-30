import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pizza_delivery/app/core/ui/config/ui_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: UiConfig.title,
      theme: UiConfig.theme,
      getPages: UiConfig.routes,
    );
  }
}
