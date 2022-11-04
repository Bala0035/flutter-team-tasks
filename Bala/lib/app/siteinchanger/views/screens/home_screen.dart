import 'package:flutter/material.dart';
import '../../core/app_colors.dart';
import '../widgets/logoutbttn.dart';
import 'blastrequestscreen.dart';
import 'drawer.dart';
import 'inventoryscreen.dart';
import 'stocktransferscreen.dart';

class SiteinchagerHomepage extends StatefulWidget {
  // SiteinchagerHomepage({required this.subConId,Key? key}) : super(key: key);
  // var subConId;
  @override
  State<SiteinchagerHomepage> createState() => _SiteinchagerHomepageState();
}

class _SiteinchagerHomepageState extends State<SiteinchagerHomepage> {
  int scrindx = 0;
  void setScreen(int indx) {
    setState(() {
      scrindx = indx;
      // ignore: avoid_print
      print(scrindx);
      Navigator.of(context).pop();
    });
  }

  
  Future<bool> _onWillPop() async {
     
         if( scrindx ==0){ 
          return  (await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: new Text('Are you sure?'),
          content: new Text('Do you want to exit an App'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(false), 
              child: new Text('No'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: new Text('Yes'),
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
   var screen = <Widget>[
    const InventoryScreen(),
    const StockListPage(),
   BlastRequestScreen(subConId:1),
  ]; return WillPopScope(
        onWillPop: _onWillPop,
      child: Scaffold(
        drawer: AppDrawer(
          context:context,
        scrwidth: scrwidth,
        setScreen: setScreen,),
        appBar: AppBar(
        toolbarHeight: 60,
          backgroundColor: AppColors.themeColor,
          actions: const [Logout()],
        ),
        body: screen[scrindx],
        
        
      ),
    );
  }
}
