import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/text_strings.dart';
import 'views/homeimports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TextStrings.flutterText,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:   HomeView(),
    );
  }
}

