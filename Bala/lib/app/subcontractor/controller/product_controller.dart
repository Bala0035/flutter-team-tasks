import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import '../core/app_data.dart';


Future fetchstockdata(BuildContext context) async {
  try{
  final Uri uri = Uri.parse(AppData.stockApi);
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


Future fetchBlasteRqstData(BuildContext context) async {
  try{
  final Uri uri = Uri.parse(AppData.blastingRequestHeaderAPi);
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


fetchMaterial() async {
  try{
  final Uri uri = Uri.parse(AppData.dscbitemApi);
  final responsed = await http.get(uri);
  var datareceived = jsonDecode(responsed.body);
  print(datareceived);

  return datareceived;}
  catch (e){
    
    
  print(" fetchMaterial");
  }
}



fetch() async {
  try{
  final Uri uri = Uri.parse(AppData.dscbitemApi);
  final responsed = await http.get(uri);
  var datareceived = jsonDecode(responsed.body);

  return datareceived;}
  catch (e){
    
    
  print(" fetchMaterial");
  }
}



Future fetchUom(BuildContext context) async {
  try{
  final Uri uri = Uri.parse(AppData.dscbitemApi);
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

