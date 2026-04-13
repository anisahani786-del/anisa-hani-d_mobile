import 'package:flutter/material.dart';
import 'package:flutter_application_1/hallo_world.dart';
import 'package:flutter_application_1/column_widget.dart';
import 'package:flutter_application_1/row_widget.dart';
import 'package:flutter_application_1/ui/produk_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Menampilkan hello world', home: ColumnWidget());
    }
}
