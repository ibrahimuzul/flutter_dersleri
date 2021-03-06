import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EtkinListeOrnek extends StatelessWidget {
  List<Ogrenci> tumOgrenciler = [];

  @override
  Widget build(BuildContext context) {
    ogrenciVerileriniGetir();

    return ListView.separated(
        separatorBuilder: (context, index) {
          if (index % 4 == 0 && index != 0) {
            return Container(
              height: 2,
              color: Colors.blue,
              margin: EdgeInsets.all(40),
            );
          } else {
            return Container();
          }
        },
        itemCount: 20,
        //itemBuilder: (context, index) => Card(),
        itemBuilder: (context, index) {
          return Card(
            color:
                index % 2 == 0 ? Colors.red.shade200 : Colors.orange.shade200,
            elevation: 4,
            child: ListTile(
              leading: Icon(Icons.perm_contact_calendar),
              title: Text(tumOgrenciler[index]._isim),
              subtitle: Text(tumOgrenciler[index]._aciklama),
              trailing: Icon(Icons.add),
              onTap: () {
                debugPrint(tumOgrenciler[index].toString());
                toastMesajGoster(index, false);
                alertDialogGoster(context,index);
              },
              onLongPress: () {
                debugPrint("Uzun basılan eleman $index");
                toastMesajGoster(index, true);
              },
            ),
          );
        });
  }

  void ogrenciVerileriniGetir() {
    tumOgrenciler = List.generate(
        300,
        (index) => Ogrenci("Ogrenci $index Adı", "Ogrenci $index açıklaması",
            index % 2 == 0 ? true : false));
  }

  void toastMesajGoster(int index, bool uzunbasilma) {
    Fluttertoast.showToast(
        msg: uzunbasilma
            ? "uzun basildi :" + tumOgrenciler[index].toString()
            : "Tek tıklama :" + tumOgrenciler[index].toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void alertDialogGoster(BuildContext ctx,int index) {
    showDialog(
        context: ctx,
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            title: Text("Alert Dialog Başlığı"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("Öğrenci adı : ${tumOgrenciler[index]._isim}"),
                  Text("Öğrenci adı : ${tumOgrenciler[index]._aciklama}"),

                ],
              ),
            ),
            actions: [
              ButtonTheme.bar(
                child: ButtonBar(
                  children: [
                    FlatButton(
                      child: Text("Tamam"),
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                    ),
                    FlatButton(
                      child: Text("Kapat"),
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}

class Ogrenci {
  String _isim;
  String _aciklama;
  bool _cinsiyet;

  String get isimgetir{
    return _isim;
  }

  Ogrenci(this._isim, this._aciklama, this._cinsiyet);

  @override
  String toString() {
    return "Seçilen öğrenci adı:$_isim açıklaması:$_aciklama";
  }
}
