import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('課題1'),
      ),
      body: SizedBox(
          height: 200,
          child: Row(children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
                child: const Center(
                  child: Text('MAIN'),
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      color: Colors.green,
                      child: const Center(
                        child: Text('A'),
                      ),
                    )
                  ],
                )),
          ])),
    );
  }
}
