import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:jsonplaceholderapicall/Pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
    );
  }
}
