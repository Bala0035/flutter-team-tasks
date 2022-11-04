import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import '../../core/app_colors.dart';
import '../../core/app_datas.dart';
import '../../data/repositorys/repository.dart';

class StockRequest extends StatefulWidget {
  const StockRequest({super.key});

  @override
  State<StockRequest> createState() => _StockRequestState();
}

class _StockRequestState extends State<StockRequest> {
 
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.orange,
          height: 5,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          child: Text(
            "STOCKL IST",
            style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.themeColor),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [ const Text(
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
            ), Row(
                  children: [
                    Expanded(
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
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Current Qty.",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: dateInput,
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Enter Remark",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                      ),
                      TextField(
                        controller: addvalue,
                        textAlign: TextAlign.left,

                        style: const TextStyle(fontSize: 20),
                        maxLines: 3,

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
          );},
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
        ),
       ],
    );
  }
}
