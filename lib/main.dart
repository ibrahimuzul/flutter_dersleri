import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.cyan, accentColor: Colors.orange),
    home: new Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter Dersleri",
          style: TextStyle(fontSize: 24.0, color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("FAB tıklandı");
        },
        //backgroundColor: Colors.green,
        child: Icon(
          Icons.access_alarms,
          color: Colors.white,
          //size: 48,
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body:Container(
        color:Colors.red,
        child: Row(
        //child: Column(
          //mainAxisSize: MainAxisSize.max,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.add_circle,
              size: 64,
              color: Colors.yellow,
            ),
            Icon(
              Icons.add_circle,
              size: 64,
              color: Colors.blue,
            ),
            Icon(
              Icons.add_circle,
              size: 64,
              color: Colors.orange,
            ),
            Expanded(
              child:  Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.purple,
              ),
            ),
            Expanded(
              child:  Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.purple,
              ),
            ),
            Expanded(
              child:  Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.purple,
              ),
            ),

          ],
        ),
      ),
    ),
  ));
}
