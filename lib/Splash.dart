

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myapp/cardui.dart';
import 'package:myapp/home_page.dart';
import 'package:myapp/listview_builder.dart';
import 'package:myapp/login_signup.dart';
import 'package:myapp/login_with_form.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login_signup()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bgf.jpeg",),fit: BoxFit.fill,
          )
        ),
        child: Center(child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/images/flash.png"),width: 200,height: 200,color: Colors.yellow,),
              Text("MyApp",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.yellow),)
            ],
          ),),
      ),
    );
  }
}
