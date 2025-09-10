import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('sdvasdv')),
        body: Container(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'endex text',
            ),
          ),
        ),
      ),
    );
  }
}
