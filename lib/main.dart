import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('sdvasdv')),
        body: Container(
          child: TextField(
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: 'endex text',
              suffixIcon: IconButton(
                onPressed: () {
                  obscureText = !obscureText;
                },
                icon: Icon(
                  obscureText ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
