//Log in Page
import 'package:flutter/material.dart';

import 'back.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
    final userName= TextEditingController();
    final password = TextEditingController();
    var key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var loginscreen = false;
    return Scaffold(
      body: Center(
        child: Form(         
      key:  key,
          child: Container(
            height: 380,
            width: 310,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(30)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Enter Name",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  height: 50,
                  width: 260,
                  child: TextFormField(
                    validator: (name) {
                      if(name == "bala"){
                        return null;
                      }
                      else{
                        return "username is wrong";
                      }
                    },
                    controller:userName,
                    decoration: InputDecoration(hintText: "Full Name"),
                  ),
                ),
                const Text(
                  "Enter Password",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  height: 50,
                  width: 260,
                  child: TextFormField(
                    validator: (pass) {
                      if(pass == "123"){
                        return null;
                      }
                      else{
                        return "wrong passward";
                      }
                    },
                    controller: password,
                    decoration: const InputDecoration(hintText: "Password"),
                  ),
                ),
                InkWell(
                   onTap: () {
                   if(key.currentState!.validate()){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>My()));

                   }
                   else{
                    print("passward &username is wrong");
                   }
                      },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    height: 40,
                    width: 110,
                    child: Center(
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
