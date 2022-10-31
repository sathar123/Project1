
import 'package:flutter/material.dart';

class Hometemp extends StatelessWidget {
  const Hometemp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle,size: 100,color: Colors.green,),
            Text('Success',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
