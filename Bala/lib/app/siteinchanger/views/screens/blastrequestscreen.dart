// ignore: file_names
import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../data/repositorys/repository.dart';
import '../widgets/blasterrqstlistcard.dart';
import 'blasterdetails.dart';

class BlastRequestScreen extends StatefulWidget {
   BlastRequestScreen({required this.subConId,Key? key}) : super(key: key);
  var subConId;
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
    return Column(
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
   detailScrnOppen ==false? Expanded(child: Blastlist()):
    Expanded(child: BlasterDetailsScreen(data:widget.derailsdata,)),
      
        
       ],
    );
  }

  Column Blastlist() {
    return Column(children: [  Padding(
        padding: const EdgeInsets.only(top: 16, right: 10, left: 10),
        child: Row(
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
        ),
      ),
      Expanded(
        child: FutureBuilder<List>(
            future: fetchBlasteRqstData(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                // ignore: avoid_print
                print('error in loading${snapshot.error.toString()}');
              }
              if (snapshot.hasData) {
                return Padding(
                    padding:
                        const EdgeInsets.only(top: 16, right: 10, left: 10),
                    child: BlasterRqstListCard(
                      context,
                      list: [snapshot.data],
                      changevalue: changeScreen,
                    ));
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
     ],);
  }
}
