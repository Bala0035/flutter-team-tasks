
import 'package:flutter/material.dart';
import '../../core/app_colors.dart';
import '../../core/extensions/string_extensions.dart';

class BlasterRqstListCard extends StatelessWidget {
   BlasterRqstListCard(BuildContext context,{super.key, required this.list ,required this.changevalue});

  final List list;
  String subConId = "1";
    final ValueChanged<bool>   changevalue;
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list[0].length,
        itemBuilder: (context, i) {
          if (subConId == list[0][i]['blastingHeaderId'].toString()) {
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
                            capitalize(list[0][i]['stockId'].toString()),
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
                          capitalize(list[0][i]['stockId'].toString()),
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
                          capitalize(list[0][i]['stockId'].toString()),
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
                          capitalize(list[0][i]['stockId'].toString()),
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
                         capitalize(list[0][i]['stockId'].toString()),
                          // style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                      
                          changevalue(true);
                        
                        
                      },
                      child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 3),
                          color:AppColors.inputbgclr,
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
