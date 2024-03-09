import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Lesson06 extends StatelessWidget {
  const Lesson06({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final images = [
      'https://molasoft-article.com/flutter-drill/images/mola-red.png',
      'https://molasoft-article.com/flutter-drill/images/mola-blue.png',
      'https://molasoft-article.com/flutter-drill/images/mola-yellow.png',
      'https://molasoft-article.com/flutter-drill/images/mola-green.png',
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('課題5'),
        ),
        body: GridView.builder(
          padding: EdgeInsets.all(4),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            childAspectRatio: 1.2,
          ),
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Image(image: NetworkImage(images[index]));
          },
        ));
  }
}
