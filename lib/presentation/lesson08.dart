import 'package:flutter/material.dart';

class Lesson08 extends StatelessWidget {
  const Lesson08({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('課題8'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  child: Text('ダイアログ表示'),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (_) {
                          return AlertDialog(
                            title: Text('タイトル'),
                            content: Text('本文'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('OK'))
                            ],
                          );
                        });
                  })
            ],
          ),
        ));
  }
}
