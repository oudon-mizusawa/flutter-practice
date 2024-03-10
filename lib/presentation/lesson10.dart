import 'package:flutter/material.dart';

class Lesson10 extends StatelessWidget {
  const Lesson10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('課題10'),
        ),
        body: const PageSwap());
  }
}

class PageSwap extends StatelessWidget {
  const PageSwap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: <Widget>[
        Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.lightBlue,
            child: const Center(
              child: Text('Page 1'),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.lightBlue,
            child: const Center(
              child: Text('Page 2'),
            ),
          ),
        ),
        Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.lightBlue,
            child: const Center(
              child: Text('Page 3'),
            ),
          ),
        )
      ],
    );
  }
}
