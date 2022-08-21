// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'sorular.dart';
import 'iconlar.dart';

TestVeri test_1 = TestVeri();

// ignore: use_key_in_widget_constructors
class Test1 extends StatefulWidget {
  @override
  _Test1State createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  List<Widget> secimler = [];
  void butonFonksiyonu(secilenbuton) {
    if (test_1.testBittiMi1() == true) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(title: const Text("Sorular Bitti"), actions: <Widget>[
              FlatButton(
                child: const Text("test 2 ye geç"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Test2()));
                },
              ),
              FlatButton(
                child: const Text("Testi Sıfırla"),
                onPressed: () {
                  Navigator.of(context).pop();

                  setState(() {
                    test_1.testiSifirla1();
                    secimler = [];
                  });
                },
              ),
            ]);
          });
    } else {
      setState(() {
        test_1.getSoruYaniti1() == secilenbuton ? secimler.add(dogruIconu) : secimler.add(yanlisIconu);
        test_1.sonrakiSoru1();
      });
    }
  }

  //int soruIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange, title: Text("test 1")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(test_1.getSoruMetni1()),
            SizedBox(
              height: 10,
            ),
            Wrap(spacing: 10, children: secimler),
            Row(
              children: [
                Expanded(
                  child: RaisedButton(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(
                        Icons.thumb_down,
                        color: Colors.red,
                        size: 20,
                      ),
                    ),
                    onPressed: () {
                      butonFonksiyonu(false);
                    },
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(
                        Icons.thumb_up,
                        size: 20,
                        color: Colors.green,
                      ),
                    ),
                    onPressed: () {
                      butonFonksiyonu(true);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Test2 extends StatefulWidget {
  @override
  _Test2State createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  List<Widget> secimler = [];
  void butonFonksiyonu(secilenbuton) {
    if (test_1.testBittiMi2() == true) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(title: const Text("Sorular Bitti"), actions: <Widget>[
              FlatButton(
                child: const Text("Başa Dön"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Test3()));
                },
              ),
              FlatButton(
                child: const Text("Başa Dön"),
                onPressed: () {
                  Navigator.of(context).pop();

                  setState(() {
                    test_1.testiSifirla2();
                    secimler = [];
                  });
                },
              ),
            ]);
          });
    } else {
      setState(() {
        test_1.getSoruYaniti2() == secilenbuton ? secimler.add(dogruIconu) : secimler.add(yanlisIconu);
        test_1.sonrakiSoru2();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange, title: Text("Test 2")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(test_1.getSoruMetni2()),
            SizedBox(
              height: 10,
            ),
            Wrap(spacing: 10, children: secimler),
            Row(
              children: [
                Expanded(
                  child: RaisedButton(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(
                        Icons.thumb_down,
                        color: Colors.red,
                        size: 20,
                      ),
                    ),
                    onPressed: () {
                      butonFonksiyonu(false);
                    },
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(
                        Icons.thumb_up,
                        size: 20,
                        color: Colors.green,
                      ),
                    ),
                    onPressed: () {
                      butonFonksiyonu(true);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Test3 extends StatefulWidget {
  @override
  _Test3State createState() => _Test3State();
}

class _Test3State extends State<Test3> {
  List<Widget> secimler = [];
  void butonFonksiyonu(secilenbuton) {
    if (test_1.testBittiMi3() == true) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(title: const Text("Sorular Bitti"), actions: <Widget>[
              FlatButton(
                child: const Text("Başa Dön"),
                onPressed: () {
                  Navigator.of(context).pop();

                  setState(() {
                    test_1.testiSifirla3();
                    secimler = [];
                  });
                },
              ),
            ]);
          });
    } else {
      setState(() {
        test_1.getSoruYaniti3() == secilenbuton ? secimler.add(dogruIconu) : secimler.add(yanlisIconu);
        test_1.sonrakiSoru3();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange, title: Text("Test 3")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(test_1.getSoruMetni3()),
            SizedBox(
              height: 10,
            ),
            Wrap(spacing: 10, children: secimler),
            Row(
              children: [
                Expanded(
                  child: RaisedButton(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(
                        Icons.thumb_down,
                        color: Colors.red,
                        size: 20,
                      ),
                    ),
                    onPressed: () {
                      butonFonksiyonu(false);
                    },
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(
                        Icons.thumb_up,
                        size: 20,
                        color: Colors.green,
                      ),
                    ),
                    onPressed: () {
                      butonFonksiyonu(true);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
