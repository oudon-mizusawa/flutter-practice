import 'package:flutter/material.dart';
import 'package:flutter_practice/main.dart';

class Lesson09 extends StatelessWidget {
  const Lesson09({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('課題9'),
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
                                child: Text('OK'),
                                onPressed: () => Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MainApp(),
                                  ),
                                  (_) => false,
                                ),
                              )
                            ],
                          );
                        });
                  })
            ],
          ),
        ));
  }
}
