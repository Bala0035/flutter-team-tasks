// ignore: file_names
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../core/extensions/string_extensions.dart';
import '../../data/repositorys/repository.dart';
import 'blasterdetails.dart';

class BlastRequestScreen extends StatefulWidget {
  var subConId =1;
  var derailsdata=null;

  @override
  State<BlastRequestScreen> createState() => _BlastRequestScreenState();
}

class _BlastRequestScreenState extends State<BlastRequestScreen> {
  
    bool detailScrnOppen = false;

   void changeScreen(var data) {
  setState(() {
     widget.derailsdata = data;
    detailScrnOppen = !detailScrnOppen;
  
  });
  print( widget.derailsdata);
}


  @override
  Widget build(BuildContext context) {
  
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.orange,
            height: 5,
            width: double.infinity,
          ),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            child: detailScrnOppen ==false? const Text(
                  "BLASTE REQUEST LIST",
                  style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.themeColor,fontSize: 20,),
                ):Container(
                  child: Row(
              children: [
                   InkWell(
                    onTap: () {
                      changeScreen(false);
                    },
                     child: const Text(
                      "BLASTE REQUEST LIST/",
                      style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.themeColor,fontSize: 20,),
                                 ),
                   ), 
                  const Text(
                    "Details",
                    style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.themeColor,fontSize: 20,),
                  ),
              ],
            ),
                ),
          ),
       detailScrnOppen ==false? Column(children: [  Padding(
        padding: const EdgeInsets.only(top: 16, right: 10, left: 10),
        child: Titles(),
      ),
      FutureBuilder(
          future: fetchBlasteRqstData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print('error in loading${snapshot.error.toString()}');
            }
            if (snapshot.hasData) {
              List list =[snapshot.data];
              return Padding(
                  padding:
                      const EdgeInsets.only(top: 16, right: 10, left: 10),
                // child: Text(""),
                  child:  ListView.builder(
        itemCount: [snapshot.data][0].length,
        itemBuilder: (context, i) {
          if (0 == list[0][i]['subConId'].toString()) {
            return Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("bala"),
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
                          // changevalue(data);
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
                )
                );
          
          } else {
            return Container();
          }
        })
        
                  );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
     ],):
      BlasterDetailsScreen(data:widget.derailsdata,),
        
          
         ],
      ),
    );
  }

  // Column Blastlist() {
  //   return ;
  // }
}

class Titles extends StatelessWidget {
  const Titles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: const Text(
                "ID",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )),
        Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: const Text(
              "Date",
              style: TextStyle(fontWeight: FontWeight.bold),
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
              "Shift",
              style: TextStyle(fontWeight: FontWeight.bold),
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
              "T.face ID",
              style: TextStyle(fontWeight: FontWeight.bold),
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
              "Status",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: const Text(
              "  ",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
      ],
    );
  }
}
