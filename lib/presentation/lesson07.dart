import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Lesson07 extends StatelessWidget {
  const Lesson07({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('https://flutter.dev');
    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw Exception('Could not launch $_url');
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('課題7'),
        ),
        body: Center(
            child: Column(
          children: [
            ElevatedButton(child: Text('アプリ内ブラウザ'), onPressed: _launchUrl)
          ],
        )));
  }
}
