import 'package:flutter/material.dart';
import 'package:project_amazon/front_page/front_page.dart';
// import 'package:project_amazon/front_page/front_page.dart';
//import 'package:project_amazon/front_page/front_page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
