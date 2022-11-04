

import 'package:blaster/app/login/core/app_datas.dart';

import '../models/modul.dart';


import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';


Future<List> fetchstockdata() async {
  final Uri uri = Uri.parse(AppData.stockApi);
  final responsed = await http.get(uri);
  var datareceived = jsonDecode(responsed.body);
  return datareceived;
}

Future<List> fetchBlasteRqstData() async {
  final Uri uri = Uri.parse(AppData.blastingRequestApi);
  final responsed = await http.get(uri);
  var datareceived = jsonDecode(responsed.body);
  return datareceived;
}

Future<List> fetchDescribData() async {
  final Uri uri = Uri.parse(AppData.dscbitemApi);
  final responsed = await http.get(uri);
  var datareceived = jsonDecode(responsed.body);
  return datareceived;
}

