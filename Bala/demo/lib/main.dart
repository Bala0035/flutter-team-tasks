import 'package:demo/test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String a = "https://images.emojiterra.com/google/noto-emoji/v2.034/128px/1f60a.png";
  String b = "https://images.emojiterra.com/twitter/v14.0/128px/1f60a.png";
String result = "https://images.emojiterra.com/google/noto-emoji/v2.034/128px/1f60a.png";
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        body: Center(
            child: InkWell(
      onTap: () {
        setState(() {
          if (result == a) {
            result = b;
          } else
            result = a;
        });
      },
      child: Container(child: Image(image: NetworkImage(result))),
    )));
  }
}