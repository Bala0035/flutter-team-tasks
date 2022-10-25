import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({
    Key? key,
    required this.value,
  }) : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      color: AppColors.themecolor,
      child: SizedBox(
        width: 200,
        height: 200,
        child:Center(
          child: Text(value,
          style:const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            letterSpacing: 2,
          color: Colors.white)),
        ),
    )
    );
  }
}