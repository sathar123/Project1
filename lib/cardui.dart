

import 'package:flutter/material.dart';

class Cardui extends StatelessWidget {
  const Cardui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bgcolor = [Colors.blue,Colors.orange,Colors.green,Colors.pink,Colors.deepOrange,Colors.blueAccent,Colors.purple,Colors.teal,Colors.yellow,Colors.redAccent,Colors.pinkAccent,Colors.lightGreenAccent];
    var listicon = [Icons.home,Icons.add_alert,Icons.linked_camera,Icons.local_activity,Icons.connect_without_contact,Icons.book,Icons.call,Icons.mail,Icons.collections_bookmark,Icons.computer_outlined,Icons.mic_off,Icons.add_business_sharp];
    String label = 'Heart Shaker';
    int id=0;
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(

                    shrinkWrap: true,
                      itemCount: bgcolor.length~/2,
                      itemBuilder: (BuildContext ctx,int index) {
                      id = index;
                    if(id!=0)
                      ++id;
                    return Row(
                      children: [
                        Expanded(

                          child: Card(
                            color: bgcolor[id],
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)) ) ,
                            child: ListTile(
                              leading: Icon(listicon[id]),
                              title: Text(label),
                            ),
                          ),
                        ),

                        Expanded(
                          child: Card(
                            color: bgcolor[id+1],
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)) ) ,
                            child: ListTile(
                              leading: Icon(listicon[id+1]),
                              title: Text(label),
                            ),
                          ),
                        )
                      ],
                    );
                  })
                ],
              ),
            ),
          ),
        ),
    );
  }
}
