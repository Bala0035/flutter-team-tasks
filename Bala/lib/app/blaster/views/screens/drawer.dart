import 'package:flutter/material.dart';

import '../../core/app_colors.dart';


class AppDrawer extends StatelessWidget {
 AppDrawer({
    Key? key,
    required BuildContext context,
    required this.scrwidth,
    required this.setScreen,
  }) : super(key: key);

  final double scrwidth;
  var setScreen;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                        "STOCK TRANSFER LIST",
                        style: TextStyle(
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
    );
  }
}
