import 'package:flutter/material.dart';
import 'package:lab2/widgets/image_viewer.dart';

class Theme2Screen extends StatelessWidget {
  final List<String> theme2Images = [
    'assets/images/theme2_image1.jpg',
    'assets/images/theme2_image2.jpg',
    // Додайте інші зображення тут
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Тема 2')),
      body: ImageViewer(images: theme2Images),
    );
  }
}
