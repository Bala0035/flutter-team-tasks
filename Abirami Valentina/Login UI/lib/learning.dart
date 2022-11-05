import 'package:flutter/material.dart';
import 'package:task_2/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 25, right: 25, top: 350,),
                     child: TextField(
                        decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 3,color: Color(0xffE74B68))
                        ),
                        hintText: 'Enter username',
                        labelText: 'Username',
                        ),
                      ),
                   ),
                    Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                     child: TextField(
                        decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: new BorderSide(width: 3,color: Color(0xffE74B68))
                        ),
                        hintText: 'Enter password',
                        labelText: 'Password',
                        
                        ),
                      ),
                   ),
                   SizedBox(
                    height: 50,
                    width: 350,
                     child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        
                      ),
                      onPressed: () { 
                        setState(() {
                           Navigator.push(
                        context,
                                MaterialPageRoute(builder: (context) => const HomePage()),
                          );
                        });
                      },
                      child: Text('Log in', style: TextStyle(fontSize: 20),),
                                     ),
                   ),
      
                  ],
                  
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
                       // Image border
                      child: SizedBox.fromSize(
                        
                        size: Size.infinite, // Image radius
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
                        Text("Login",style: TextStyle(
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
      ),
    );
  }
}