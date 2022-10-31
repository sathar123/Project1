import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
                child: Text(
              "List of Fruit",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )),
            Card(
              child: ListTile(
                leading: CircleAvatar(child: Icon(Icons.apple,size: 35,),radius: 30,),
                title: Text("Fruit 1"),
                subtitle: Text("9876543210"),
                trailing: Icon(Icons.check_circle,color: Colors.green,),
              ),
            ),

            ListTile(
              leading: CircleAvatar(child: Icon(Icons.apple,size: 35,),radius: 30,),
              title: Text("Fruit 2"),
              subtitle: Text("9876543210"),
              trailing: Icon(Icons.check_circle,size: 30,color: Colors.green,),
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.apple,size: 35,),radius: 30,),
              title: Text("Fruit 3"),
              subtitle: Text("9876543210"),
              trailing: Icon(Icons.check_circle,size: 30,color: Colors.green,),
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.apple,size: 35,),radius: 30,),
              title: Text("Fruit 4"),
              subtitle: Text("9876543210"),
              trailing: Icon(Icons.check_circle,size: 30,color: Colors.green,),
            ),
          ],
        ));
  }
}
