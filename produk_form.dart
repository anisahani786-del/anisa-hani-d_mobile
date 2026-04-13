import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/produk_detail.dart';

class Produkform extends StatefulWidget {
  @override
  _Produkformstate createState() => _Produkformstate();
}

class _Produkformstate extends State<Produkform> {
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Produk'),
        backgroundColor: Colors.indigo, // Memberi warna pada header
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Memberi jarak dari tepi layar
          child: Column(
            children: [
              _textboxkodeProduk(),
              SizedBox(height: 15), // Jarak antar input
              _textboxnamaProduk(),
              SizedBox(height: 15),
              _textboxHargaProduk(),
              SizedBox(height: 30), // Jarak lebih besar sebelum tombol
              _tombolSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  _textboxkodeProduk() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Kode Produk",
        border: OutlineInputBorder(), // Membuat border kotak yang modern
        prefixIcon: Icon(Icons.qr_code), // Menambah ikon agar lebih intuitif
      ),
      controller: _kodeProdukTextboxController,
    );
  }

  _textboxnamaProduk() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Nama Produk",
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.shopping_bag),
      ),
      controller: _namaProdukTextboxController,
    );
  }

  _textboxHargaProduk() {
    return TextField(
      keyboardType: TextInputType.number, // Memunculkan keyboard angka saja
      decoration: InputDecoration(
        labelText: "Harga Produk",
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.attach_money),
      ),
      controller: _hargaProdukTextboxController,
    );
  }

  _tombolSimpan() {
    return SizedBox(
      width: double.infinity, // Membuat tombol selebar layar
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.indigo, // Warna tombol serasi dengan AppBar
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Sudut tombol agak membulat
          ),
        ),
        child: Text('Simpan Data', style: TextStyle(fontSize: 18)),
        onPressed: () {
          String kode_produk = _kodeProdukTextboxController.text;
          String nama_produk = _namaProdukTextboxController.text;
          // Menggunakan tryParse agar tidak error jika input kosong
          int harga = int.tryParse(_hargaProdukTextboxController.text) ?? 0;

          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ProdukDetail(
                kodeProduk: kode_produk,
                namaProduk: nama_produk,
                harga: harga,
              ),
            ),
          );
        },
      ),
    );
  }
}