import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Lesson04 extends StatelessWidget {
  const Lesson04({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloodTypes = [
      'A型',
      'B型',
      'C型',
      'D型',
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Text('課題4'),
        ),
        body: GridView.builder(
          padding: EdgeInsets.all(4),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 2,
            mainAxisSpacing: 4,
          ),
          itemCount: bloodTypes.length,
          itemBuilder: (BuildContext context, int index) {
            return bloodTypeTile(bloodTypes[index]);
          },
        ));
  }
}

Widget bloodTypeTile(String info) {
  return Container(
    color: Colors.red,
    child: Center(
      child: Text(info),
    ),
  );
}
