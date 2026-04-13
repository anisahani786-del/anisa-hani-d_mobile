import 'package:flutter/material.dart';

void main() {
  runApp(HalloWorld());
}

class HalloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menampil hallo world',
      home: Scaffold(
        appBar: AppBar(
          title: Text('belajar flutter')),
          body: Center(
            child: Text('Hello Guys'),
          ),
        )
      );
    }
}