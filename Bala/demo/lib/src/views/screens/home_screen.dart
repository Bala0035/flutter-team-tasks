
import 'package:flutter/material.dart';

import '../widgets/welcome_card.dart';
import '/src/core/app_colors.dart';
import '/src/core/app_datas.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title:const Text(AppData.appName) ,
        backgroundColor: AppColors.themecolor,
      ),
      body:const Center(
        child: 
          WelcomeCard(value: "Welcome")
          ,
      )
    );
  }
}
