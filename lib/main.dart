
import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

void main() {
  runApp(demo());
}
class demo extends StatefulWidget {
  const demo({super.key});

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
   bottomNavigationBar: Padding(
     padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
     
     child: MoltenBottomNavigationBar(
      borderRaduis: BorderRadius.all( Radius.circular(10)),
      barColor: Colors.amber,
        selectedIndex: _selectedIndex,
        onTabChange: (clickedIndex) {
          setState(() {
            _selectedIndex = clickedIndex;
          });
        },
        tabs: [
          MoltenTab(
            icon: Icon(Icons.home),
          ),
          MoltenTab(
            icon: Icon(Icons.alarm),
          ),
          MoltenTab(
            icon: Icon(Icons.person),
          ),
          MoltenTab(
            icon: Icon(Icons.heart_broken),
          ),
          MoltenTab(
            icon: Icon(Icons.document_scanner),
          ),
        ],
     ),
   ),

    );
  }
}