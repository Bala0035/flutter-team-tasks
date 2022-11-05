import 'package:flutter/material.dart';

class LgPg extends StatefulWidget {
  const LgPg({super.key});

  @override
  State<LgPg> createState() => _LgPgState();
}

class _LgPgState extends State<LgPg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                color: Colors.black,
                child: 
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 450),
                      child: TextField(
                          decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter a search term',
            ),
          ),
                    ),
                  ],
                ),
              ),
              // Container(
              //   height: 400,
              //   decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100),bottomRight: Radius.circular(100)),
              //   ),
              //   // child: Image(
              //   //   height: 400,
              //   //   image: NetworkImage('https://wallpaperaccess.com/full/3463512.png'),)

              //   child: Image.network('https://wallpaperaccess.com/full/3463512.png', fit: BoxFit.fill,),

                
              // ),
              Container(
                height: 300,
                // color: Color(0x4DE74B68),
                child: ClipRRect(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100),bottomRight: Radius.circular(100)),
                     // Image border
                    child: SizedBox.fromSize(
                      
                      size: Size.fromRadius(400), // Image radius
                      child: Image.asset(
                        'assets/images/login.png', 
                        fit: BoxFit.cover),
                    ),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.all(125),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(" Login ",style: TextStyle(
                        fontSize: 40, fontWeight: FontWeight.bold,
                        color: Colors.white, 
                        ),),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}