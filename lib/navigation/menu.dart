import 'package:flutter/material.dart';
import 'package:flutter_deryarpl3/navigation/about_page.dart';

class ContohNav extends StatelessWidget {
  const ContohNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 255, 255, 255), // Warna latar belakang yang lembut dan modern
      appBar: AppBar(
        title: const Text(
          "Menu",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Kartu Informasi Profil Singkat (Opsional untuk mempercantik)
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Colors.blueAccent, Colors.lightBlue],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Selamat Datang, Derya!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Silakan pilih menu di bawah ini.",
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "Daftar Menu",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 12),

              // Kumpulan Tombol Navigasi
              _buildMenuButton(
                context,
                title: "Pindah ke Halaman About",
                subtitle: "Kirim data nama, kelas, dan umur",
                icon: Icons.person_outline,
                color: Colors.indigo,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return AboutPage(
                          nama: "derya",
                          kelas: "XII RPL",
                          umur: 17,
                        );
                      },
                    ),
                  );
                },
              ),
              const SizedBox(height: 12),
              _buildMenuButton(
                context,
                title: "Latihan Grid",
                subtitle: "Navigasi ke halaman /grid",
                icon: Icons.grid_view,
                onPressed: () {
                  Navigator.pushNamed(context, '/grid');
                },
              ),
              const SizedBox(height: 12),
              _buildMenuButton(
                context,
                title: "Halaman List",
                subtitle: "Navigasi ke halaman /list",
                icon: Icons.list_alt,
                onPressed: () {
                  Navigator.pushNamed(context, '/list');
                },
              ),
              const SizedBox(height: 12),
              _buildMenuButton(
                context,
                title: "Halaman Layout",
                subtitle: "Navigasi ke halaman /layout",
                icon: Icons.dashboard_outlined,
                onPressed: () {
                  Navigator.pushNamed(context, '/layout');
                },
              ),
              const SizedBox(height: 12),
              _buildMenuButton(
                context,
                title: "Halaman Row & Column",
                subtitle: "Navigasi ke halaman /rowcolumn",
                icon: Icons.view_column_outlined,
                onPressed: () {
                  Navigator.pushNamed(context, '/rowcolumn');
                },
              ),
              const SizedBox(height: 12),
              _buildMenuButton(
                context,
                title: "Halaman Container",
                subtitle: "Navigasi ke halaman /container",
                icon: Icons.crop_square,
                onPressed: () {
                  Navigator.pushNamed(context, '/container');
                },
              ),
              const SizedBox(height: 12),
              _buildMenuButton(
                context,
                title: "Halaman Formulir",
                subtitle: "Navigasi ke halaman /formulir",
                icon: Icons.assignment_outlined,
                onPressed: () {
                  Navigator.pushNamed(context, '/formulir');
                },
              ),
              const SizedBox(height: 12),
              _buildMenuButton(
                context,
                title: "Halaman Latihan Formulir",
                subtitle: "Navigasi ke halaman /latihan_formulir",
                icon: Icons.assignment_outlined,
                onPressed: () {
                  Navigator.pushNamed(context, '/latihan_formulir');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget Helper untuk merapikan kode tombol agar tidak ada pengulangan (Reusable Widget)
  Widget _buildMenuButton(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required VoidCallback onPressed,
    Color color = Colors.blueAccent,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.08),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.black87,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 12, color: Colors.grey[600]),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey,
        ),
        onTap: onPressed,
      ),
    );
  }
}
