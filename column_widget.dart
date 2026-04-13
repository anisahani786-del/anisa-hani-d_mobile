import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Column'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        elevation: 10, // Memberikan bayangan pada AppBar
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        // Memberikan gradasi warna pada background agar tidak flat
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.indigo.shade50, Colors.white],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildCustomItem('Kolom 1', Colors.indigo, FontWeight.bold),
            _buildCustomItem('Kolom 2', Colors.black87, FontWeight.normal),
            _buildCustomItem('Kolom 3', Colors.black87, FontWeight.normal, isItalic: true),
            _buildCustomItem('Kolom 4', Colors.indigoAccent, FontWeight.w500),
          ],
        ),
      ),
    );
  }

  // Fungsi pembantu agar tampilan teks lebih cantik seperti kartu
  Widget _buildCustomItem(String text, Color color, FontWeight weight, {bool isItalic = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 40),
      padding: EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: weight,
            color: color,
            fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
          ),
        ),
      ),
    );
  }
}