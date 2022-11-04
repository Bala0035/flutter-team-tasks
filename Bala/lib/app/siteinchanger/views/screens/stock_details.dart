import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../widgets/title_value.dart';

class StockDetails extends StatelessWidget {
   StockDetails({super.key});
  String title ="bala";
  String value ="value";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [const Text(
                                  "Approvedby L&T",
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                                ),
                                Container(width: 100   ,
                                height:        40                     ,
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: TextField(
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(fontSize: 20),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: AppColors.inputbgclr,
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: AppColors.inputbgclr),
                                          borderRadius: BorderRadius.circular(4.0),
                                        ),
                                        focusColor: Colors.black,
                                        focusedBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color:
                                                  Color.fromARGB(255, 255, 255, 255)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),],
                  ),
                ),
                
              ],
            ),
            const Center(child: CTitleValue(title: "Sub Contractor", value:""),),
            
            RTitleValue(title: "From", value: value),
             Padding(
        padding: const EdgeInsets.all(8.0),
               child: Row(
                      children: [const Text(
                                    "To",
                                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                                  ),
                                  SizedBox(height: 10,width: 10,),
                                  Container(width: 300   ,
                                  height:        40                     ,
                                    child: TextField(
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(fontSize: 20),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: AppColors.inputbgclr,
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: AppColors.inputbgclr),
                                          borderRadius: BorderRadius.circular(4.0),
                                        ),
                                        focusColor: Colors.black,
                                        focusedBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color:
                                                  Color.fromARGB(255, 255, 255, 255)),
                                        ),
                                      ),
                                    ),
                                  ),],
                    ),
             ),
              
            RTitleValue(title: "Status", value: value),
            RTitleValue(title:"Remarks", value: value),
            // Flexible(child: Container(height: double.maxFinite,)), 
            InkWell(
                            onTap: () {
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 8),
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 242, 191, 17),
                              ),
                              child: const Text(
                                "Approve",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w800),
                              ),
                            )),
                        
            // Container(height: double.maxFinite,), 
         ],
        ),
      ),
    );
  }
}
