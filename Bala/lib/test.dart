import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  BasicPage({Key? key}) : super(key: key);
  var clr =Colors.orange;
  var data ="Bala";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic"),
      ),
      body: Column(
        children: [
          MyCard(clr: Colors.cyan, data: data),
          MyCard(clr: clr, data: data),
          MyCard(clr: Colors.red, data: data),
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
   MyCard( {
    Key? key,
    required this.clr,
    required this.data,
    
  }) : super(key: key);

  final MaterialColor clr;
  final String data;
  var brclr="";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
      child: Container(
        color: clr,
        height: 100,
        width: MediaQuery.of(context).size.width*0.23,
        child: Center(child: Text(data)),
    
      ),
    );
  }
}