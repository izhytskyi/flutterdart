import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String result;

  ResultScreen(this.result);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Результат тесту'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(result),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Повторити тест'),
            ),
          ],
        ),
      ),
    );
  }
}
