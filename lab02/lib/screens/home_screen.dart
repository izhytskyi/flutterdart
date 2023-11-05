import 'package:flutter/material.dart';
import 'theme1_screen.dart';
import 'theme2_screen.dart';
import 'theme3_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Переглядач картинок')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => Theme1Screen(),
                ));
              },
              child: Text('Тема 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => Theme2Screen(),
                ));
              },
              child: Text('Тема 2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => Theme3Screen(),
                ));
              },
              child: Text('Тема 3'),
            ),
          ],
        ),
      ),
    );
  }
}