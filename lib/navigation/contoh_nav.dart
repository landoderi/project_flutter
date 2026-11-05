import 'package:flutter/material.dart';
import 'package:flutter_deryarpl3/navigation/about_page.dart';

class ContohNav extends StatelessWidget {
  const ContohNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Column(
        
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AboutPage(nama: "derya", kelas: "XII RPL", umur: 17);
                  },
                ),
              );
            },
            child: const Text("Pindah ke Halaman (About)"),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/grid');
            },
            child: const Text("Latihan Grid"),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/list');
            },
            child: const Text("Halaman List"),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/layout');
            },
            child: const Text("Halaman layout"),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/rowcolumn');
            },
            child: const Text("Halaman List"),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/container');
            },
            child: const Text("Halaman container"),
          ),
        ],
      ),
    );
  }
}
