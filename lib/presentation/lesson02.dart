import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Lesson02 extends StatelessWidget {
  const Lesson02({Key? key}) : super(key: key);

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
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(child: Text(news[index])),
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
            }));
  }
}
