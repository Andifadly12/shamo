import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shamogetx/pages/auth/logiinPages.dart';
import 'package:shamogetx/pages/home/homepages.dart';
import 'package:shamogetx/route/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePages(),
      getPages: appPage.pages,
    );
  }
}
