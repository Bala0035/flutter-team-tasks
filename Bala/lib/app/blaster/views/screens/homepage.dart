
import 'package:flutter/material.dart';
import '../../core/app_colors.dart';
import '../widgets/logoutbttn.dart';
import 'blastrequest.dart';
import 'blastrequestscreen.dart';
import 'inventoryscreen.dart';
import 'stockrequest.dart';
import 'stocktransferscreen.dart';

class BlasterHomePage extends StatefulWidget {
  const BlasterHomePage({Key? key}) : super(key: key);

  @override
  State<BlasterHomePage> createState() => _BlasterHomePageState();
}

class _BlasterHomePageState extends State<BlasterHomePage> {
  int scrindx = 0;
  void setScreen(int indx) {
    setState(() {
      scrindx = indx;
      Navigator.of(context).pop();
    });
  }

  var screen = <Widget>[
    const InventoryScreen(),
    const BlastRuest(),
     BlastRequestScreen(),
    StockRequest(),
    const StockListPage(),
  ];
  @override
  Widget build(BuildContext context) {
    double scrwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: Column(
        children: [
          Container(
            width: scrwidth * 0.6,
            height: 60,
            color: Colors.transparent,
          ),
          Flexible(
            child: AnimatedContainer(
              width: scrwidth * 0.6,
              duration: const Duration(milliseconds: 400),
              decoration: BoxDecoration(
                color: AppColors.themeColor,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(50.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      setScreen(0);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 7),
                      child: const Text(
                        "INVENTORY",
                        style: TextStyle(
                            // fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setScreen(1);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 7),
                      child: const Text(
                        "BLAST REQUEST",
                        style: TextStyle(
                            // fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setScreen(2);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 7),
                      child: const Text(
                        "BLAST REQUEST LIST",
                        style: TextStyle(
                            // fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setScreen(3);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 7),
                      child: const Text(
                        "STOCK TRANSFER REQUEST",
                        style: TextStyle(
                            // fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setScreen(4);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 7),
                      child: const Text(
                        "STOCK TRANSFER LIST",
                        style: TextStyle(
                            // fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: AppColors.themeColor,
        actions: const [Logout()],
      ),
      body: screen[scrindx],
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          elevation: 8,
          backgroundColor: AppColors.themeColor,
          onPressed: () {
            setState(() {
              scrindx = 0;
            });
          },
          // isExtended: true,
          child: const Center(child: Icon(Icons.notifications_none_outlined)),
        ),
      ),
    );
  }
}
