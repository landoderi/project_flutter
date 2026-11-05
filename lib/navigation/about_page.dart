import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  final String nama, kelas;
  final int umur;

  AboutPage({
    super.key,
    required this.nama,
    required this.kelas,
    required this.umur
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Halaman about"),
            Text("Nama lengkap: ${'nama'}"),
            Text("Kelas: ${'kelas'}"),
            Text("Umur: ${'umur'}"),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: const Color.fromARGB(255, 1, 217, 255),
                child: Text("Kembali"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
