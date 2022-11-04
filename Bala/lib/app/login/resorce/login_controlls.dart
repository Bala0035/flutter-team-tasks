import 'package:blaster/app/subcontractor/core/app_data.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../blaster/views/screens/homepage.dart';
import '../../siteinchanger/views/screens/home_screen.dart';
import '../../subcontractor/view/screens/homepage.dart';

Future login(String username, String password, context) async {
  try{
  final Uri uri = Uri.parse(AppData.loginApi);
  final response = await http.get(uri);
  var datareceived = jsonDecode(response.body);
  String str = username;
  if (username == "" && password == "") {
    showAlertDialog(context, "USER Name or PASSWORD");
  } else {
    for (int i = 0; datareceived.length > i; i++) {
      if (datareceived[i]['loginId'] == str &&
          datareceived[i]['password'] == password) {
        if (datareceived[i]['roleId'] == 0) {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => SubContractorHomepage(subConId: datareceived[i]['subConId'],)),
          );
        }
        else if (datareceived[i]['roleId'] == 2) {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => const BlasterHomePage()),
          );
        } 
        else if (datareceived[i]['roleId'] == 3) {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_) => SiteinchagerHomepage()),
          );
        }
        else{
           showAlertDialog(context, "User Role Not Available");
        }

        // Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
        break;
      } else if (i == (datareceived.length - 1)) {
        showAlertDialog(context, "Enter Correct USERNAME \n and PASSWORD");
      }
    }
  }}
  catch (e){
    showDialog(
    context: context,
    builder: (BuildContext context) {
      return const AlertDialog(
    content: Text("Check your\ninternet connection"),
  );
    },
  );
  }
}

showAlertDialog(BuildContext context, String name) {
  AlertDialog alert = AlertDialog(
    content: Text("$name"),
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
