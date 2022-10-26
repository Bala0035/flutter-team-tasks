import 'package:flutter/material.dart';

import 'screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var scrs=[Homescreen(),SettingsScren()];
 var index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: scrs[index],

      bottomNavigationBar: Container(
        height: 60, 
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                 index=0;
                });
              },
              child: Icon(Icons.home)),
            
            InkWell(    
                onTap: () {
                setState(() {
                 index=1;
                });
                
              },
              child: Icon(Icons.settings)),
          ],
        ),

      ),
    );
  }
}