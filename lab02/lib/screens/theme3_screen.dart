import 'package:flutter/material.dart';
import 'package:lab2/widgets/image_viewer.dart';

class Theme3Screen extends StatelessWidget {
  final List<String> theme3Images = [
    'assets/images/theme3_image1.jpg',
    'assets/images/theme3_image2.jpg',
    // Додайте інші зображення тут
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Тема 3')),
      body: ImageViewer(images: theme3Images),
    );
  }
}
