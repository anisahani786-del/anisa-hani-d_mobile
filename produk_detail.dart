import 'package:flutter/material.dart';

class ProdukDetail extends StatefulWidget {
  final String kodeProduk;
  final String namaProduk;
  final int harga;

  ProdukDetail({
    required this.kodeProduk,
    required this.namaProduk,
    required this.harga,
  });

  @override
  _ProdukDetailState createState() => _ProdukDetailState();
}

class _ProdukDetailState extends State<ProdukDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Produk'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4, // Memberikan efek bayangan
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Agar card mengikuti besar konten
              crossAxisAlignment: CrossAxisAlignment.start, // Teks rata kiri
              children: [
                Text(
                  "INFORMASI PRODUK",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                    letterSpacing: 1.2,
                  ),
                ),
                Divider(thickness: 1), // Garis pemisah
                SizedBox(height: 15),
                
                _buildInfoRow("Kode Produk", widget.kodeProduk),
                SizedBox(height: 10),
                
                _buildInfoRow("Nama Produk", widget.namaProduk),
                SizedBox(height: 10),
                
                _buildInfoRow("Harga", "Rp ${widget.harga.toString()}"),
                
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Fungsi pembantu agar kode tetap bersih
  Widget _buildInfoRow(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w500),
        ),
        Text(
          value,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}