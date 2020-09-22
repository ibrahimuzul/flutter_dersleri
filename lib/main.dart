import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      title: "MaterialApp Title",
      home: MyHomePage(title: "My Home Page"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  int sayac = 0;

  MyHomePage({this.title}) {
    debugPrint("MyhomePage Statefull widget constructor çalıştırıldı");
  }

  @override
  State<StatefulWidget> createState() {
    debugPrint("MyhomePage Statefull widget createState çalıştırıldı");
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  _MyHomePageState() {
    debugPrint("MyHomePageState State  constructor çalıştırıldı");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("MyHomePageState build metodu tetkiklendi");
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _sayacDegeriniArttir();
            debugPrint("sayac değeri arttırıldı set state çağırıldı");
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("Arttır"),
              color: Colors.green,
              onPressed: () {
                _sayacDegeriniArttir();
              },
            ),
            Text("${widget.sayac}",
                style: Theme.of(context).textTheme.display2.copyWith(
                  color:widget.sayac<0 ? Colors.red : Colors.green
                )),
            RaisedButton(
              child: Text("Arttır"),
              color: Colors.red,
              onPressed: () {
                _sayacDegeriniAzalt();
              },
            ),
          ],
        ),
      ),
    );
  }

  void _sayacDegeriniArttir() {
    setState(() {
      widget.sayac++;
      debugPrint(widget.sayac.toString());
    });

  }

  void _sayacDegeriniAzalt() {
    setState(() {
      widget.sayac--;
      debugPrint(widget.sayac.toString());
    });

  }
}
