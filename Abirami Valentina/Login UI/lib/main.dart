import 'package:flutter/material.dart';
import 'package:task_2/home.dart';
import 'package:task_2/lg.dart';
import 'package:task_2/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage() ,
      debugShowCheckedModeBanner: false,
    );
  }
}



