
import 'package:flutter/material.dart';
import 'package:myapp/Signup.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _HomeState();
}

class _HomeState extends State<Login> {
  bool hidepass = true;
  void Togglepass(){
    setState(() {
      if(hidepass == true){
        hidepass= false;
      }else{
        hidepass = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('LoginPage'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 86),
                child: Text(
                  'LoginPage',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(

                      prefixIcon: Icon(Icons.account_circle),
                      labelText: "UserName",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  obscureText: hidepass,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          if(hidepass)
                            hidepass=false;
                          else
                            hidepass=true;
                        });
                      },
                      icon: Icon(
                        hidepass? Icons.visibility : Icons.visibility_off
                      ),
                      ),
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.pinkAccent),
                        minimumSize: MaterialStateProperty.all(Size(200, 50)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),

                            )
                        )
                    ),
                    onPressed: () {}, child: Text('LOGIN')),
              ),
              TextButton(
                  onPressed: () {
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Signup()));
                  }, child: Text('Not a User? Register Here!!!'))
            ],
          ),
        ));
  }
}

