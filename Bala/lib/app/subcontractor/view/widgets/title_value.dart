
import 'package:flutter/material.dart';

import '../../core/extensions.dart';

class CTitleValue extends StatelessWidget {
  const CTitleValue({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Text(value,
          style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}


class RTitleValue extends StatelessWidget {
  const RTitleValue({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
            Text("$title : ",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      Text(value,
      style: const TextStyle(fontSize: 20),
      ),
          
        ],
      ),
    );
  }
}
