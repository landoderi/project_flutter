import 'package:flutter/material.dart';

class HasilOutput extends StatelessWidget {
  final String nama, kategori, kelas, tanggalLahir, gender, isilaporan; // Tambahkan parameter tanggal lahir

  const HasilOutput({
    super.key,
    required this.nama,
    required this.kategori,
    required this.kelas,
    required this.tanggalLahir, 
    required this.gender,// Tambahkan parameter tanggal lahir
    required this.isilaporan,
  });

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hasil Laporan')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama: $nama'),
            Text('Kategori: $kategori'),
            Text('Kelas: $kelas'),
            Text('Tanggal Lahir: $tanggalLahir'),
            Text('Isi Laporan: $isilaporan'), // Tampilkan tanggal lahir
          ],
        ),
      ),
    );
  }
}