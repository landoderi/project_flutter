import 'package:flutter/material.dart';

class LatihanContainer extends StatelessWidget {
  const LatihanContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      margin: const EdgeInsets.all(50),
      padding: const EdgeInsets.all(50),
      alignment: Alignment.bottomCenter,

      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 0, 0, 0), width: 3),
        image: const DecorationImage(
          image: NetworkImage(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIRePY1fb9k1ePBBCNheNMvXZuurOsr1ujehvWDB0rdFsM_202aMoHuUwV&s=10",
          ),
          fit: BoxFit.fill,
        ),
      ),
      transform: Matrix4.rotationX(0.2),
      child: const Text(
        "Gelombang demonstrasi besar-besaran yang berujung kerusuhan dan penjarahan melanda Prancis sejak 17 Oktober 2026. Aksi ini dipicu oleh lonjakan biaya hidup, penurunan kualitas layanan publik, serta protes pelajar terhadap fasilitas sekolah yang buruk, dengan lebih dari 1.200 orang ditangkap oleh pihak berwenang.",
        // Perbaikan: textAlign harus berada di dalam properti, bukan sebagai posisi parameter pertama
        textAlign: TextAlign.justify,
        style: TextStyle(
          backgroundColor: Colors.white,

        ),
        
      ),
    );
  }
  
}