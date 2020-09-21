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
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text("Image ve Buton Türleri",textAlign: TextAlign.center,style:TextStyle(fontSize: 24),),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(40),
                margin: EdgeInsets.all(2),
                color: Colors.red.shade100,
                child: Text(
                  "D",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Container(
                padding: EdgeInsets.all(40),
                margin: EdgeInsets.all(2),
                color: Colors.red.shade100,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Container(
                padding: EdgeInsets.all(40),
                margin: EdgeInsets.all(2),
                color: Colors.red.shade100,
                child: Text(
                  "R",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(40),
                margin: EdgeInsets.all(2),
                color: Colors.red.shade100,
                child: Text(
                  "D",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Container(
                padding: EdgeInsets.all(40),
                margin: EdgeInsets.all(2),
                color: Colors.red.shade100,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Container(
                padding: EdgeInsets.all(40),
                margin: EdgeInsets.all(2),
                color: Colors.red.shade100,
                child: Text(
                  "R",
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ));
}
