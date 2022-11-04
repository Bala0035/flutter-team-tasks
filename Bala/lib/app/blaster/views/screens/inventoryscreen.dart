import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/app_datas.dart';

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({Key? key}) : super(key: key);

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
                      TextStyle(color: AppColors.themeColor, fontWeight: FontWeight.bold,fontSize: 20,),
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
