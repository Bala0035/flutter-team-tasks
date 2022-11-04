import 'app/subcontractor/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'test.dart';
void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIMode(
  //   SystemUiMode.immersiveSticky,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations(
    //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    // GestureDetector(
    //   onTap: () => FocusScope.of(context).unfocus(),
    // );
    return  MaterialApp(
      title:"blaster",
      color: AppColor.themeColor,
      debugShowCheckedModeBanner: false,
      home:BasicPage(),
    );
  }
}
