import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../../data/repositorys/repository.dart';
import '../widgets/stocklistcard.dart';
import 'stock_details.dart';


class StockListPage extends StatefulWidget {
  const StockListPage({super.key});

  @override
  State<StockListPage> createState() => _StockListPageState();
}

class _StockListPageState extends State<StockListPage> {

    bool detailScrnOppen = false;

 
void changeScreen(bool value) {
  setState(() {
    detailScrnOppen = !detailScrnOppen;
  });
}

 Column stockList( ) {
    return Column(
        children: [
            Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Container(
                width: double.infinity,
                alignment: Alignment.topLeft,
                child: const Text(
                  "ID",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Container(
                width: double.infinity,
                alignment: Alignment.topLeft,
                child: const Text(
                  "Date",
                  style: TextStyle(fontWeight: FontWeight.bold),
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
                  "Description of item",
                  style: TextStyle(fontWeight: FontWeight.bold),
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
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // Flexible(
            //   fit: FlexFit.tight,
            //   flex: 1,
            //   child: Container(
            //     width: double.infinity,
            //     alignment: Alignment.center,
            //     child: const Text(
            //       "Unit",
            //       style: TextStyle(fontWeight: FontWeight.bold),
            //     ),
            //   ),
            // ),
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
        child: FutureBuilder(
            future: fetchstockdata(context),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                // ignore: avoid_print
                print('error in loading${snapshot.error.toString()}');
              }
              if (snapshot.hasData) {
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: StocklistCard( context,
                      list: [snapshot.data],founction: changeScreen,
                    ));
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    
        ],
      );
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
          child: detailScrnOppen ==false? const Text(
                "STOCKLIST",
                style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.themeColor,fontSize: 20,),
              ):Container(
                child: Row(
            children: [
                 InkWell(
                  onTap: () {
                    changeScreen(false);
                  },
                   child: const Text(
                    "STOCKLIST/",
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
         detailScrnOppen ==false? Expanded(child: stockList()): Expanded(child: StockDetails()),
      ],
    );
  }

 }
