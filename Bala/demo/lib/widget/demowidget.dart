import 'package:flutter/material.dart';

class DemoWidget extends StatelessWidget {

  DemoWidget({Key? key,required this.appThemeColor,required this.bgclr, required this.productimge,required this.productname}) : super(key: key);
  var appThemeColor ;
  var productimge;
  var bgclr;
  String productname = "Text"; 


 Widget _gridItemBody(BuildContext context,image,Color bodybgcolor) {
  double scrwidth = MediaQuery.of(context).size.width;
  double scrheight = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: bodybgcolor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(padding: EdgeInsets.all(5),
        child:  Image.network(
            image,
          
        ),
      ),
    );
  }

  Widget _gridItemHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Visibility(
            // visible: controller.isPriceOff(product),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),color: appThemeColor),
              // width: 80,
              // height: 30,
              alignment: Alignment.center,
              child: const Text(
                "30% OFF",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.favorite,
              color:appThemeColor
            ),
            onPressed: (){}// => controller.isLiked(index),
          ),
        ],
      ),
    );
  }

  Widget _gridItemFooter( BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        // height: 60,
        decoration:  BoxDecoration(
          color: appThemeColor,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FittedBox(
              child: Text(productname,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: const TextStyle(
                    fontWeight: FontWeight.w500, color: Colors.white),
              ),
            ),
            const SizedBox(height: 5),
            Flexible(
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text("₹340",
                    style: TextStyle(color: Colors.black)
                  ),
                  const SizedBox(width: 3),
                  const Visibility(
                   child: Text(
                      "₹00",
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double scrheight = MediaQuery.of(context).size.height;
    double scrwidth = MediaQuery.of(context).size.width;
    
        return Container(
          height: (110/ 375.0) * scrheight,
          width: (200/ 375.0) * scrwidth,
          child: Column(
            children: [
                    Flexible(child: _gridItemHeader(context)),
                     Flexible(child: _gridItemBody(context,productimge,bgclr)),
                     Flexible(child: _gridItemFooter( context)),
                     ],
                  ),
        );
          
      }
  
}
