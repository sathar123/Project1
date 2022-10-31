
import 'package:flutter/material.dart';

class List_with extends StatelessWidget {
  const List_with({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = ['DATA1','DATA2','DATA3'];
    return Scaffold(
      appBar: AppBar(title: Text('List'),),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext ctx , int index){
        return Card(
          color: Colors.pink,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(40)) ) ,
          child: ListTile(
            leading: Icon(Icons.account_circle),
            title: Text(data[index]),
          ),
        );
      }),
    );
  }
}
