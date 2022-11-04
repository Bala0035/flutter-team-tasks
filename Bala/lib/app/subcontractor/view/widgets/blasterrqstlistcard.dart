
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/extensions.dart';

class BlasterRqstListCard extends StatelessWidget {
   BlasterRqstListCard(BuildContext context,{super.key, required this.list ,required this.changevalue,required this.subConId});

  final List list;
  var subConId ;
   final ValueChanged changevalue;
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list[0].length,
        itemBuilder: (context, i) {
          if (subConId.toString() == list[0][i]['subConId'].toString()) {
            return Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            capitalize(list[0][i]['orderId'].toString()),
                            // style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text(
                          dateget(list[0][i]['date'].toString()),
                          // style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text(
                          shiftget(list[0][i]['shift'].toString()),
                          // style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text(
                          capitalize(list[0][i]['tunnelFaceId'].toString()),
                          // style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Text(
                         capitalize(list[0][i]['status'].toString()),
                          // style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        var data =list[0][i];
                        
                      
                          changevalue(data);
                        
                        
                      },
                      child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          color:AppColor.inputbgclr,
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
