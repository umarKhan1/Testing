import 'package:flutter/material.dart';

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
    return MaterialApp(
      title: TextStrings.flutterText,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const  HomeView(),
    );
  }
}

