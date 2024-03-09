import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Lesson05 extends StatelessWidget {
  const Lesson05({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final images = [
      'images/test1.png',
      'images/test2.png',
      'images/test3.png',
      'images/test4.png',
      'images/gensan.png',
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
            childAspectRatio: 1.5,
          ),
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(images[index]);
          },
        ));
  }
}
