import 'package:flutter/material.dart';
import 'ui/custom_scroll_ve_slivers.dart';
import 'ui/date_time_picker.dart';
import 'ui/form_textformfield_ornek.dart';
import 'ui/stepper_kullalnimi.dart';
import 'ui/text_field_ozellikleri.dart';
import 'ui/navigasyon_islemleri.dart';
import 'ui/diger_form_elemanlari.dart';
import 'ui/grid_view_kullanimi.dart';


void main() {
  runApp(MaterialApp(
    title: "Flutter Dersleri",

    initialRoute: "/stepper",

    routes: {
      '/'      : (context) => NavigasyonIslemleri(),
      '/textFieldIslemleri' : (context) => TextFieldIslemleri(),
      '/textFormField' : (context) => FormveTextFormField(),
      '/digerFormElemanlari' : (context) => DigerFormElemanlari(),
      '/tarihSaat' : (context) => TarihSaatOrnek(),
      '/stepper' : (context) => StepperOrnek(),
      '/CPage' : (context) => CSayfasi(),
      '/DPage' : (context) => DSayfasi(),
      '/GPage' : (context) => GSayfasi(),
      '/FPage' : (context) => FSayfasi(),
      '/CPage/DPage' : (context) => DSayfasi(),
      '/CPage/DPage/FPage' : (BuildContext context) => FSayfasi(),
      '/listeSayfasi' : (context) => ListeSinifi(),
    },

    onGenerateRoute: (RouteSettings settings) {
      List<String> pathElemanlari = settings.name.split("/"); //   /detay/$index  /urun/detay/id
      if(pathElemanlari[1] == 'detay'){
        return MaterialPageRoute(builder: (context)=>ListeDetay(int.parse(pathElemanlari[2])));
      }
    },

    onUnknownRoute: (RouteSettings settings) => MaterialPageRoute(builder: (context) => DSayfasi(),),

    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    //home: NavigasyonIslemleri(),
  ));
}
