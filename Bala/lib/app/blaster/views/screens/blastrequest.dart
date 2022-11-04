import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import '../../core/app_colors.dart';
import '../../core/app_datas.dart';
import '../../data/repositorys/repository.dart';

class BlastRuest extends StatefulWidget {
  const BlastRuest({super.key});

  @override
  State<BlastRuest> createState() => _BlastRuestState();
}

class _BlastRuestState extends State<BlastRuest> {
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = ""; 
    super.initState();
  }


  final addvalue= TextEditingController();

  @override
  void dispose() {
    addvalue.dispose();
    super.dispose();
  }

  String? selectedItem;
  // ignore: avoid_init_to_null
  var unitvlu= null;
  var crntvlu =null;
  void Findstate(){
    AddInventoryItem.map((e) {
      if (e.descriptionofitem.toString()== selectedItem ){
       setState(() {
        unitvlu =e.unit;
         crntvlu = e.crntqty;
       });
         }}).toList();   
  }
 


  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.orange,
            height: 5,
            width: double.infinity,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            child: Text(
              "STOCKL IST",
              style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.themeColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Date",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: dateInput,
                            cursorColor:  AppColors.themeColor,
                            decoration: InputDecoration(
                              hintText: "Enter Date",
                              icon: Icon(Icons.calendar_today, color: AppColors.themeColor),
                              contentPadding: EdgeInsets.all(8),
                              
                              filled: true,
                              fillColor: AppColors.inputbgclr,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppColors.inputbgclr,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ),
                            readOnly: true,
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2020),
                                  lastDate: DateTime(2100));
                
                              if (pickedDate != null) {
                                String formattedDate =
                                    DateFormat('dd-MM-yyyy').format(pickedDate);
                                setState(() {
                                  dateInput.text = formattedDate;
                                });
                              } else {}
                            },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        ),
                      ),
                    ],
                  ),
                
                ),
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  child: InkWell(
                      onTap: () {},
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
                          "insn",
                          style: TextStyle(
                            color: Colors.white,
                            // fontSize: 24,
                            // fontWeight: FontWeight.w800
                          ),
                        ),
                      )),
                ),
             const Text(
                  "Description of item",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                ),
                Container(
              padding: const EdgeInsets.symmetric( 
              horizontal: 15
              ),
              width: 300,
              decoration: BoxDecoration(
                  color:AppColors.inputbgclr,
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButton<String>(
                value: selectedItem,
                focusColor: AppColors.inputbgclr,
                
                onChanged: (value) {
              
                  setState(() {
                    selectedItem = value;
                    Findstate();
                  });
                },
                hint: const Center(
                    child: Text(
                  'Select the Item',
                  style: TextStyle(color: Colors.black),
                )),
                underline: Container(),
                dropdownColor: AppColors.inputbgclr,
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
                ),
                isExpanded: true,
                items:   AddInventoryItem.map((e) {
                  return DropdownMenuItem(
                          value: e.descriptionofitem.toString(),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              e.descriptionofitem.toString(),
                              style: const TextStyle(fontSize: 20,),
                            ),
                          ),
                        );})
                    .toList(),
    
                selectedItemBuilder: (BuildContext context) => AddInventoryItem
                    .map((e) { 
                     
                      return Center(
                          child: Text(
                            e.descriptionofitem.toString(),
                            style: const TextStyle(
                               fontSize: 20,
                                color: Colors.black,
                               ),
                          ),
                        );})
                    .toList(),
              ),
            ),
             Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Unit",
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                            ),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                color: AppColors.inputbgclr
                              ),
                              child: Text(
                                unitvlu.toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20),
                                ),
                              
                            ),
                           
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Type",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                          ),
                         Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                color: AppColors.inputbgclr
                              ),
                              child: Text(
                                crntvlu.toString(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 20),
                                ),
                              
                            ),
                        ],
                      ),
                    ),
                  ],
               
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Enter Qty.to Add",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                      ),
                       TextField(
                          controller: addvalue,
                          textAlign: TextAlign.left,
                         
                          style: const TextStyle(fontSize: 20),
                         
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.inputbgclr,
                            enabledBorder: UnderlineInputBorder(
                              borderSide: const BorderSide(color: AppColors.inputbgclr),
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
                     
                  
                    ],
                  ),
                ),
                Center(
                  child: InkWell(
                      onTap: () {
                        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text("$selectedItem\n${addvalue.text}"),
              );
            },
          );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:AppColors.themeColor),
                        child: const Text(
                          "Add",
                          style: TextStyle(
                              color: Colors.white,
                            fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      )),
                ),
             
              ],
            ),
          ),
          // Container(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceAround,
          //           children: [
          //             Flexible(
          //               fit: FlexFit.tight,
          //               flex: 3,
          //               child: Container(
          //                 width: double.infinity,
          //                 child: const Text(
          //                   "Description of item",
          //                   style: TextStyle(fontWeight: FontWeight.bold),
          //                 ),
          //               ),
          //             ),
          //             Flexible(
          //               fit: FlexFit.tight,
          //               flex: 1,
          //               child: Container(
          //                 width: double.infinity,
          //                 alignment: Alignment.center,
          //                 child: const Text(
          //                   "Unit",
          //                   style: TextStyle(fontWeight: FontWeight.bold),
          //                 ),
          //               ),
          //             ),
          //             Flexible(
          //               fit: FlexFit.tight,
          //               flex: 1,
          //               child: Container(
          //                 width: double.infinity,
          //                 alignment: Alignment.center,
          //                 child: const Text(
          //                   "Oty",
          //                   style: TextStyle(fontWeight: FontWeight.bold),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          // //       Container(
          // //         child: FutureBuilder(
          // //             future: fetchDescribData(context),
          // //             builder: (context, snapshot) {
          // //               if (snapshot.hasError) {
          // //                 // ignore: avoid_print
          // //                 print('error in loading${snapshot.error.toString()}');
          // //               }
          // //               if (snapshot.hasData) {
          // //                 return Padding(
          // //                     padding: const EdgeInsets.all(8.0),
          // //                     // child: InvetoryCard(
          // //                     //   list: [snapshot.data],
          // //                     // )
          // //                     );
          // //               } else {
          // //                 return const Center(
          // //                   child: CircularProgressIndicator(),
          // //                 );
          // //               }
          // //             }),
          // //       ),
          //     ],
          //   ),
          // )
       
        ],
      ),
    );
  }
}
