import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/extensions.dart';
import '../screens/stockdetails.dart';


class StocklistCard extends StatelessWidget {
  StocklistCard(BuildContext context,{required this.list ,required this.founction});

  final List list;
  String subConId = "1";
    final ValueChanged<bool>   founction;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list[0].length,
        itemBuilder: (context, i) {
    print(list[0][i]['subConId'].toString());
          if (subConId == list[0][i]['subConId'].toString()) {
            return Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Container(
                    //   child: Text(
                    //     capitalize(list[0][i]['stockId'].toString()),
                    //     // style: TextStyle(fontWeight: FontWeight.bold),
                    //   ),
                    // ),
                    // Flexible(
                    //   fit: FlexFit.tight,
                    //   flex: 1,
                    //   child: Container(
                    //     width: double.infinity,
                    //     alignment: Alignment.center,
                    //     child: Text(
                    //       capitalize(list[0][i]['createdDate'].toString()),
                    //       // style: TextStyle(fontWeight: FontWeight.bold),
                    //     ),
                    //   ),
                    // ),
                    // Flexible(
                    //   fit: FlexFit.tight,
                    //   flex: 2,
                    //   child: Container(
                    //     width: double.infinity,
                    //     alignment: Alignment.center,
                    //     child: Text(
                    //       capitalize(list[0][i]['qty'].toString()),
                    //       // style: TextStyle(fontWeight: FontWeight.bold),
                    //     ),
                    //   ),
                    // ),
                    // Flexible(
                    //   fit: FlexFit.tight,
                    //   flex: 2,
                    //   child: Container(
                    //     width: double.infinity,
                    //     alignment: Alignment.center,
                    //     child: Text(
                    //       capitalize(list[0][i]['qty'].toString()),
                    //       // style: TextStyle(fontWeight: FontWeight.bold),
                    //     ),
                    //   ),
                    // ),
                    // Flexible(
                    //   fit: FlexFit.tight,
                    //   flex: 1,
                    //   child: Container(
                    //     width: double.infinity,
                    //     alignment: Alignment.center,
                    //     child: Text(
                    //       capitalize(list[0][i]['qty'].toString()),
                    //       // style: TextStyle(fontWeight: FontWeight.bold),
                    //     ),
                    //   ),
                    // ),
                    InkWell(
                      onTap: (){
                        founction(true);
                      }
                      ,
                      child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          color: AppColor.inputbgclr,
                          child: const Text(
                            ">>",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    )
                  ],
                ));
          } else {
            return Container();
          }
        });
  }
}
