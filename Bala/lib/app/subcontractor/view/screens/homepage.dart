import 'package:flutter/material.dart';
import '../../core/app_colors.dart';
import '../widgets/logoutbttn.dart';
import 'blastrequestslistscreen.dart';
import 'inventoryscreen.dart';
import 'stocklist.dart';

class SubContractorHomepage extends StatefulWidget {
   SubContractorHomepage({required this.subConId,Key? key}) : super(key: key);
  var subConId;

  @override
  State<SubContractorHomepage> createState() => _SubContractorHomepageState();
}

class _SubContractorHomepageState extends State<SubContractorHomepage> {
 
  int scrindx = 0;
  
  void setScreen(int indx) {
    setState(() {
      scrindx = indx;
      Navigator.of(context).pop();
    });
  }

  
   Future<bool> _onWillPop() async {
         if( scrindx ==0){ 
          return  (await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title:  const Text('Are you sure?'),
          content: const Text('Do you want to exit an App'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(false), 
              child:  const Text('No'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('Yes'),
            ),
          ],
        ),
      ));}
      else {
            setState(() {
              scrindx = 0;
            });
        return false;}
}
  @override
  Widget build(BuildContext context) {

    double scrwidth = MediaQuery.of(context).size.width;
    var screen = [
    const InventoryScreen(),
    const StockListPage(),
     BlastRequestScreen()
     ];

  return  WillPopScope(
        onWillPop: _onWillPop,
      child: Scaffold(
        drawer: SafeArea(
          child: Column(
            children: [
              Container(
                width: scrwidth * 0.6,
                height: 65,
                color: Colors.transparent,
              ),
              Flexible(
                child: AnimatedContainer(
                  width: scrwidth * 0.6,
                  duration: const Duration(milliseconds: 400),
                  decoration: const BoxDecoration(
                    color: AppColor.themeColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(150.0),
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
                                fontSize: 20,
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
                            "STOCK TRANSFER LIST",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white, fontWeight: FontWeight.bold),
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
                                fontSize: 20,
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: AppColor.themeColor,
          actions: const [Logout()],
        ),
        body: screen[scrindx],
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            elevation: 8,
            backgroundColor: AppColor.themeColor,
            onPressed: () {
              setState(() {
                scrindx = 0;
              });
            },
            child: const Center(child: Icon(Icons.notifications_none_outlined)),
          ),
        ),
      ),
    );
  }
}
