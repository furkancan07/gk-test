// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'sayfalar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(primaryColor: Colors.orange, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.orange)), home: AnaEkran());
  }
}

class AnaEkran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Genel Kültür Soruları",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                height: 10,
                child: RaisedButton(
                  child: Text(
                    "Test 1",
                    style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Test1(),
                        ));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                height: 10,
                child: RaisedButton(
                  child: Text(
                    "Test 2",
                    style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Test2(),
                        ));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                height: 10,
                child: RaisedButton(
                  child: Text(
                    "Test 3",
                    style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Test3()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
