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
      body: Center(
        child: Container(
          //width: 300,
          //height: 300,
          //alignment: Alignment(1,1),
          //alignment: Alignment.bottomLeft,
          color: Colors.green,
          child: Text(
            "Flutter CheatSheet.",
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          /*constraints: BoxConstraints(
            maxHeight: 300.0,
            maxWidth: 200.0,
            minWidth: 150.0,
            minHeight: 150.0
          ),*/
          constraints: BoxConstraints.expand(
            width: 400,
            height: 400
          ),
          //constraints: BoxConstraints.expand(),
          //margin: EdgeInsets.all(15),
          //margin: EdgeInsets.only(left:15),
          margin: EdgeInsets.symmetric(horizontal:15),
          //padding: EdgeInsets.all(15),
          padding: EdgeInsets.only(top:45),
        ),
      ),
    ),
  ));
}
