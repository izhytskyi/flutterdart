import 'package:flutter/material.dart';
import 'package:lab2/widgets/image_viewer.dart';

class Theme1Screen extends StatelessWidget {
  final List<String> theme1Images = [
    'assets/images/theme1_image1.jpg',
    'assets/images/theme1_image2.jpg',
    // Додайте інші зображення тут
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Тема 1')),
      body: ImageViewer(images: theme1Images),
    );
  }
}
