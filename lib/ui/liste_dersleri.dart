import 'package:flutter/material.dart';

class ListeKonuAnlatimi extends StatelessWidget {
  //Liste için veri kaynağı oluştur
  List<int> listeNumaralari = List.generate(300, (index) => index);
  List<String> listeAltBaslik =
      List.generate(300, (index) => "Liste elemanı alt başlık $index");

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: listeNumaralari
            .map((e) => Column(
                  children: <Widget>[
                    Container(
                      child: Card(
                        color: Colors.teal.shade100,
                        margin: EdgeInsets.all(10),
                        elevation: 10,
                        child: ListTile(
                          leading: CircleAvatar(
                            child: Icon(Icons.android),
                            radius: 12,
                          ),
                          title: Text("Liste eleman başlık $e"),
                          subtitle: Text(listeAltBaslik[e]),
                          trailing: Icon(Icons.add_circle),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.orange,
                      height: 0,
                      indent: 20,
                    ),
                  ],
                ))
            .toList());
  }
}
