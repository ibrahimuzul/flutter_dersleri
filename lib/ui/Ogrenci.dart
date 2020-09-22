
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
