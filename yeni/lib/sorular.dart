// ignore: unused_import
import 'package:flutter/material.dart';

import 'soru.dart';

class TestVeri {
  int _soruIndex1 = 0;
  int _soruIndex2 = 0;
  int _soruIndex3 = 0;
  final List<Soru> _ilkTest = [
    Soru(soruMetni: "Hanefilik islam dininde sunni bir mezheptir", soruYaniti: true),
    Soru(soruMetni: "Barcelona ispanyanın başkentidir", soruYaniti: false),
    Soru(soruMetni: "Alanya Antalyanın ilçsidir", soruYaniti: true),
    Soru(soruMetni: "İstanbul 14.yüzyılda fethesidir", soruYaniti: false),
    Soru(soruMetni: "Türkiye Avrupa Birliği üyeedilmiştir ", soruYaniti: false)
  ];
  final List<Soru> _ikinciTest = [
    Soru(soruMetni: "Her doğal sayı tam sayıdır", soruYaniti: true),
    Soru(soruMetni: "Afrika ülke değildir", soruYaniti: true),
    Soru(soruMetni: "Her yıl 12 mayıs anneler günü olarak kutlanır", soruYaniti: true),
    Soru(soruMetni: "dinazorlarla insanlar aynı anda yaşamamıştır", soruYaniti: false),
    Soru(soruMetni: "Kanadanın başkenti Torontodur", soruYaniti: false)
  ];

  final List<Soru> _sontest = [
    Soru(soruMetni: "Twiterda karekter sınırı 280 dir ", soruYaniti: true),
    Soru(soruMetni: "Çeyrek altın 0.25 gramdır", soruYaniti: true),
    Soru(soruMetni: "ısı termometre ile ölçülür", soruYaniti: false),
    Soru(soruMetni: "Adnan Menderes bir uçak kazasından sağ kurtulmuştur", soruYaniti: true),
    Soru(soruMetni: "İrlanda cumhuriyeti birleşik krallığın bir parçasıdır", soruYaniti: false)
  ];

  String getSoruMetni1() {
    return _ilkTest[_soruIndex1].soruMetni;
  }

  String getSoruMetni2() {
    return _ikinciTest[_soruIndex2].soruMetni;
  }

  String getSoruMetni3() {
    return _sontest[_soruIndex3].soruMetni;
  }

  bool getSoruYaniti1() {
    return _ilkTest[_soruIndex1].soruYaniti;
  }

  bool getSoruYaniti2() {
    return _ikinciTest[_soruIndex2].soruYaniti;
  }

  bool getSoruYaniti3() {
    return _sontest[_soruIndex3].soruYaniti;
  }

  void sonrakiSoru1() {
    _soruIndex1++;
  }

  void sonrakiSoru2() {
    _soruIndex2++;
  }

  void sonrakiSoru3() {
    _soruIndex3++;
  }

  bool testBittiMi1() {
    if (_soruIndex1 + 1 >= _ilkTest.length) {
      return true;
    } else {
      return false;
    }
  }

  bool testBittiMi2() {
    if (_soruIndex2 + 1 >= _ikinciTest.length) {
      return true;
    } else {
      return false;
    }
  }

  bool testBittiMi3() {
    if (_soruIndex3 + 1 >= _sontest.length) {
      return true;
    } else {
      return false;
    }
  }

  void testiSifirla1() {
    _soruIndex1 = 0;
  }

  void testiSifirla2() {
    _soruIndex2 = 0;
  }

  void testiSifirla3() {
    _soruIndex3 = 0;
  }
}
