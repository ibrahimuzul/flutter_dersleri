import 'package:flutter/material.dart';
import 'package:flutter_dersleri/ui/etkin_liste_ornek.dart';

import 'ui/grid_view_kullanimi.dart';
import 'ui/row_column_grid.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Dersleri",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Liste Dersleri",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: GridViewOrnek(),
    ),
  ));
}
