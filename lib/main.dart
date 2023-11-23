import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Logging App'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // in debug mode, the print output will appear
              print('Button was pressed!');
            },
            child: Text('Button'),
          ),
        ),
      ),
    );
  }
}
