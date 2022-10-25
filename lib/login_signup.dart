import 'package:flutter/material.dart';
import 'package:myapp/Login.dart';
import 'package:myapp/Signup.dart';


class Login_signup extends StatelessWidget {
  const Login_signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Text("Hello There!",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            ),
            Padding(

              padding: const EdgeInsets.all(25.0),
              child: Text(
                "Automatic identity verification which enable you to verify your identity",textAlign: TextAlign.center,style: TextStyle(color: Colors.grey),),
            ),
            Image(image: AssetImage("assets/images/study.png"),

            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: ElevatedButton(

                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blueAccent.shade700),
                    minimumSize: MaterialStateProperty.all(Size(330, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),

                      ),
                    ),
                  ),
                  onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                  }, child: Text("Login",style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
                style: ButtonStyle(

                    minimumSize: MaterialStateProperty.all(Size(330, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),

                        )
                    )
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                }, child: Text("Sign Up",style: TextStyle(color: Colors.black),)),
          ],
        ),
      ),
    );
  }
}
