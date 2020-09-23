import 'package:flutter/material.dart';
import 'ui/custom_scroll_ve_slivers.dart';
import 'ui/navigasyon_islemleri.dart';
import 'ui/grid_view_kullanimi.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Dersleri",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    home: NavigasyonIslemleri(),
  ));
}
