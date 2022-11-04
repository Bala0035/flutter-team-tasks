import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_data.dart';
import '../../core/extensions.dart';

class InventoryScreen extends StatefulWidget {
  const InventoryScreen({Key? key}) : super(key: key);

  @override
  State<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
  
  // of the TextField.
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "INVENTORY",
                  style:
                      TextStyle(color: AppColor.themeColor, fontWeight: FontWeight.bold,fontSize: 20,),
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
                  color:AppColor.inputbgclr,
                  borderRadius: BorderRadius.circular(10)),
              child: DropdownButton<String>(
                value: selectedItem,
                focusColor: AppColor.inputbgclr,
                
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
                dropdownColor: AppColor.inputbgclr,
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
                                color: AppColor.inputbgclr
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
                         Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                color: AppColor.inputbgclr
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
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
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
                                fillColor: AppColor.inputbgclr,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(color: AppColor.inputbgclr),
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
                    ),
                    Center(
                      child: InkWell(
                          onTap: () {
                            getMaterial("");
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
                                color:AppColor.themeColor),
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
              ],
            ),
          ),
          Padding(
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
                          "Current\nQty",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                        ),
                      )),
                ]),
          ),
          SingleChildScrollView(
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
                                child: SizedBox(
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
    );
  }
}
