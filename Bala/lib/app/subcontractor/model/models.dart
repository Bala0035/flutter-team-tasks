
import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class Inventory{
Inventory({required this.descriptionofitem,
required this.unit,required this.crntqty});
  // ignore: prefer_typing_uninitialized_variables
  var descriptionofitem;
  var unit;
  var crntqty;
}


class RecommendedProduct {
  Color? cardBackgroundColor;
  Color? buttonTextColor;
  Color? buttonBackgroundColor;
  String? imagePath;

  RecommendedProduct(
      {this.cardBackgroundColor,
      this.buttonTextColor = AppColor.themeColor,
      this.buttonBackgroundColor = Colors.white,
      this.imagePath});
}
