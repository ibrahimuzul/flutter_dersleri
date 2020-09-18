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
      body: Container(
        //height: 200.0,
        //width: 300,
        child:Text(
          "Flutter is the best",
          textAlign:TextAlign.center,
          style:TextStyle(
            fontSize: 24,
          ),
        ),
        color: Colors.green.shade200,
        alignment: Alignment.center,
      ),
    ),
  ));
}
