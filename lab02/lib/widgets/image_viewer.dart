import 'package:flutter/material.dart';

class ImageViewer extends StatefulWidget {
  final List<String> images;

  ImageViewer({required this.images});

  @override
  _ImageViewerState createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  int currentIndex = 0;

  void goToNext() {
    if (currentIndex < widget.images.length - 1) {
      setState(() {
        currentIndex++;
      });
    }
  }

  void goToPrevious() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(widget.images[currentIndex]), // Змінено Image.network на Image.asset
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (currentIndex > 0)
              IconButton(
                onPressed: goToPrevious,
                icon: Icon(Icons.arrow_back),
              ),
            if (currentIndex < widget.images.length - 1)
              IconButton(
                onPressed: goToNext,
                icon: Icon(Icons.arrow_forward),
              ),
          ],
        ),
      ],
    );
  }
}
