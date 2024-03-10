import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Lesson03 extends StatelessWidget {
  const Lesson03({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final news = [
      '今日のニュース',
      'きのうのニュース',
      '先週のニュース',
      '１か月前のニュース',
      '一年前のニュース',
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('課題2'),
        ),
        body: ListView.builder(
            itemCount: news.length,
            itemBuilder: (BuildContext context, int index) {
              return newsTile(news[index]);
            }));
  }
}

Widget newsTile(String info) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(child: Text(info)),
            const Expanded(
              flex: 1,
              child: Text('詳細へ'),
            ),
          ],
        ),
      ),
      const Divider()
    ],
  );
}
