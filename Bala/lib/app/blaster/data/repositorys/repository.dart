

import 'package:flutter/material.dart';

import '../../core/extensions/string_extensions.dart';
import '../models/modul.dart';


import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';


Future fetchstockdata(BuildContext context) async {
  try{
  final Uri uri = Uri.parse(StringExtension.stockApi);
  final responsed = await http.get(uri);
  var datareceived = jsonDecode(responsed.body);
  return datareceived;}
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

Future fetchBlasteRqstData() async {
  // try{
  final Uri uri = Uri.parse(StringExtension.blastingRequestApi);
  final responsed = await http.get(uri);
  
  var datareceived = jsonDecode(responsed.body);
  return datareceived;
  // }
  // catch (e){
  //   showDialog(
  //   context: context,
  //   builder: (BuildContext context) {
  //     return const AlertDialog(
  //   content: Text("Check your\ninternet connection"),
  // );
  //   },
  // );
  // }
}

Future fetchDescribData(BuildContext context) async {
  try{
  final Uri uri = Uri.parse(StringExtension.dscbitemApi);
  final responsed = await http.get(uri);
  var datareceived = jsonDecode(responsed.body);
  return datareceived;}
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

