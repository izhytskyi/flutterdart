// lib/widgets/back_to_home_button.dart (якщо потрібно власна кнопка "На головну")
import 'package:flutter/material.dart';

class BackToHomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pop(); // Повернення на попередній екран
      },
      child: Text('На головну'),
    );
  }
}
