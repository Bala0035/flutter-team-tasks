import 'package:flutter/material.dart';

class prabha extends StatefulWidget {
  
  @override
  State<prabha> createState() => _prabhaState();
}

class _prabhaState extends State<prabha> {
var my=[HomeScreen(),two()];

var index=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: my[index],
      
      bottomNavigationBar: Container(
        height: 40,
        color: Colors.orange,
        child: Row(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  index=0;
                });
              },
            child: Icon(Icons.house),),
            InkWell(
              onTap: () {
                setState(() {
                  index=1;
                });
              },
            child: Icon(Icons.money_off_csred_sharp),),
            Icon(Icons.music_note),
            Icon(Icons.numbers),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        )

      ),
      
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 850,width: 400,
        color: Colors.cyanAccent,
        child: Row(
          children: [Text("homepage")],
          mainAxisAlignment: MainAxisAlignment.center,
        )
      ),
    );
  }
}
class two extends StatelessWidget {
  const two({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          height: 850,width: 400,
          color: Color.fromARGB(255, 169, 29, 182),
          child: Row(
            children: [Text("dollar")],
            mainAxisAlignment: MainAxisAlignment.center,
          )
        ),
    );
  }
}

