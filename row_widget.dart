import 'package:flutter/material.dart';

class WidgetRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Row"),
        backgroundColor: Colors.teal, // Warna lebih segar
        centerTitle: true,
      ), // AppBar
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Row(
          // Mengatur agar teks tersebar merata secara horizontal
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
          children: [
            Text(
              'Row 1',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal),
            ),
            Text(
              'Row 2',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal),
            ),
            Text(
              'Row 3',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal),
            ),
            Text(
              'Row 4',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.teal),
            ),
          ],
        ), // Row
      ), // Container
    ); // Scaffold
  }
}