import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_datas.dart';
import '../widgets/title_value.dart';


class BlasterDetailsScreen extends StatelessWidget {
BlasterDetailsScreen({super.key, required this.data});
  var data ;


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
                CTitleValue(title: "Requesr ID", value: value),
                CTitleValue(title: "Blaster", value: value),
                CTitleValue(title: "Dete", value: value),
              ],
            ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 CTitleValue(title: "Shift", value: value),
                 CTitleValue(title: "Tunnel Face ID", value: value),
                 const CTitleValue(title: " ", value: " "),
               ],
             ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                  Column(
                    children: [
                      const Text(
                                  "Chainage(From)",
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                                ),
                                Container(   
                                  height: 100
                                  ,width: 150,                  
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
                                ),
                                ],
                  ),
                    Column(
                    children: [
                      const Text(
                                  "Chainage(To)",
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                                ),
                                Container(   
                                  height: 100
                                  ,width: 150,                  
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
                                ),
                                ],
                  ),
                    
                    
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                  Column(
                    children: [
                      const Text(
                                  "Support class",
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                                ),
                                Container(   
                                  height: 100
                                  ,width: 150,                  
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
                                ),
                                ],
                  ),
                    Column(
                    children: [
                      const Text(
                                  "Face/Excavation\n method",
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                                ),
                                Container(   
                                  height: 100
                                  ,width: 150,                  
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
                                ),
                                ],
                  ),
                    
                    
              ],),
            ),
             Column(
              children:[Title(),
               Container(
                 child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 10),
                       child: Column(
                         children:  AddInventoryItem
                         .map((e) { 
                          
                           return Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Flexible(
                                     fit: FlexFit.tight,
                                     flex: 2,
                                     child: Container(
                                         width: double.infinity,
                                         child: Text(
                                           e.descriptionofitem,
                                           style: const TextStyle(
                                   fontSize: 20,)
                                         )),
                                   ),
                                   Flexible(
                                       fit: FlexFit.tight,
                                       flex: 1,
                                       child: Container(
                                         width: double.infinity,
                                         alignment: Alignment.center,
                                         child: Text(
                                           e.unit,style: const TextStyle(
                                   fontSize: 20,)
                                         ),
                                       )),
                                   Flexible(
                                     fit: FlexFit.tight,
                                     flex: 1,
                                     child: Container(
                                       width: double.infinity,
                                       alignment: Alignment.center,
                                       child: Text(
                                         e.crntqty,style: const TextStyle(
                                   fontSize: 20,)
                                       ),
                                     ),
                                   ),
                                   Flexible(
                                     fit: FlexFit.tight,
                                     flex: 1,
                                     child:  Flexible(
                     fit: FlexFit.loose,
                                     child: Container(width: 100   ,
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
                                     ),
                                   ),
                                   ),
                                 ]),
                           );
                         }).toList(),
                       ),
                     ),
                   ],
                 ),
               )
                  
             ],
                 ), 
           
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
                        
          
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: const EdgeInsets.symmetric(horizontal: 18),
       child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Flexible(
                 fit: FlexFit.tight,
                 flex: 2,
                 child: Container(
                   width: double.infinity,
                   alignment: Alignment.centerLeft,
                   child: const Text(
                     "Description of item",
                     style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                   ),
                 )),
             Flexible(
                 fit: FlexFit.tight,
                 flex: 1,
                 child: Container(
                   width: double.infinity,
                   alignment: Alignment.center,
                   child: const Text(
                     "Unit",
                     style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                   ),
                 )),
             Flexible(
                 fit: FlexFit.tight,
                 flex: 1,
                 child: Container(
                   width: double.infinity,
                   alignment: Alignment.center,
                   child: const Text(
                     "Qty",
                     style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                   ),
                 )), Flexible(
                 fit: FlexFit.tight,
                 flex: 1,
                 child: Container(
                   width: double.infinity,
                   alignment: Alignment.center,
                   child: const Text(
                     "Qty\nUsed",
                     style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                   ),
                 )),
           ]),
     );
  }
}