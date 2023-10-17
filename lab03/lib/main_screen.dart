import 'package:flutter/material.dart';
import 'quiz_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Пивний тест'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => QuizScreen()));
          },
          child: Text('Почати тест'),
        ),
      ),
    );
  }
}
