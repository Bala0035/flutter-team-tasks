import 'package:flutter/material.dart';

import '../../core/app_datas.dart';
import '../../core/extensions/string_extensions.dart';
import '../widgets/title_value.dart';

// ignore: must_be_immutable
class BlasterDetailsScreen extends StatelessWidget {
  BlasterDetailsScreen({super.key, required this.data});
  var data ;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CTitleValue(title: "Requesr ID", value: data["orderId"].toString()),
                CTitleValue(title: "Blaster", value: data["orderId"].toString()),
                CTitleValue(title: "Dete", value: dateget(data["date"].toString())),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CTitleValue(title: "Shift", value: data["shift"].toString()),
                CTitleValue(title: "Tunnel Face ID", value: data["tunnelFaceId"].toString()),
                const CTitleValue(title: " ", value: " "),
              ],
            ),
          ),
        Column(
        children: [
            Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: const Text(
                  "Description of item",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),
                ),
              ),
            ),
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
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: const Text(
                  "Qty Approved",
                  style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20,),
                ),
              ),
            ),
           
           
          ],
        ),
      ), Column(
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
      )
       
        ],
      )
        ],
      ),
    );
  }
}