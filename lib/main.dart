import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
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
          children: <Widget>[
            Text(
              "Resim ve Buton Türleri",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //Image.asset("assets/images/icon.png"),
                      Image.network("http://hdqwalls.com/wallpapers/small-memory-lp.jpg"),
                      Text("Asset Image"),
                    ],
                  ),
                ),

                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.network("http://hdqwalls.com/wallpapers/small-memory-lp.jpg"),
                      Text("Network Image"),
                    ],
                  ),
                ),

                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage("https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png"),
                        backgroundColor: Colors.purple,
                        radius: 30,
                        foregroundColor: Colors.orange,
                      ),
                      Text("Circle Avatar"),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
