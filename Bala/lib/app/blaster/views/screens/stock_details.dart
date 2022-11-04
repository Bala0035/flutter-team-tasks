import 'package:flutter/material.dart';

import '../widgets/title_value.dart';

class StockDetails extends StatelessWidget {
   StockDetails({super.key});
  String title ="bala";
  String value ="value";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CTitleValue(title: "ID", value: value),
              CTitleValue(title: "Dete", value: value),
              CTitleValue(title: "Description of item ", value: value),
              CTitleValue(title: "Unit", value: value),
            ],
          ),
          RTitleValue(title: "Blaster", value: value),
          const Center(child: CTitleValue(title: "Quantity", value:""),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CTitleValue(title: "Transnsferred", value: value),
              CTitleValue(title: "Approvedby L&T", value: value),
            ],
          ),
          const Center(child: CTitleValue(title: "Sub Contractor", value:""),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CTitleValue(title: "From", value: value),
              CTitleValue(title: "To", value: value),
            ],
          ),
          
          RTitleValue(title: "Status", value: value),
          RTitleValue(title:"Remarks", value: value),
          
       ],
      ),
    );
  }
}
