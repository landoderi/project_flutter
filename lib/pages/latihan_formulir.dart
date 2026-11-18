import 'package:flutter/material.dart';
import 'package:flutter_deryarpl3/pages/output_latihan_formulir.dart';

class LatihanFormulir extends StatefulWidget {
  const LatihanFormulir({super.key});

  @override
  State<LatihanFormulir> createState() => _LatihanFormulirState();
}

class _LatihanFormulirState extends State<LatihanFormulir> {
  final _formKey = GlobalKey<FormState>();
  final _namaC = TextEditingController();
  final _kelasC = TextEditingController();
  final _tanggalLahirC = TextEditingController();
  final _isiLaporanC = TextEditingController();

  String? _kategori;
  String _gender = 'Laki-laki';
  bool _setuju = false;

  @override
  void dispose() {
    _namaC.dispose();
    _kelasC.dispose();
    _tanggalLahirC.dispose();
    _isiLaporanC.dispose();
    super.dispose();
  }

  void _kirim() {
    if (_formKey.currentState!.validate()) {
      if (!_setuju) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Kamu harus menyetujui pernyataan kejujuran laporan'),
            backgroundColor: Colors.redAccent,
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        );
        return;
      }
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => HasilOutput(
            nama: _namaC.text,
            kategori: _kategori!,
            kelas: _kelasC.text,
            tanggalLahir: _tanggalLahirC.text,
            gender: _gender,
            isilaporan: _isiLaporanC.text,
          ),
        ),
      );
    }
  }

  Future<void> _pilihTanggal(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              primary: Colors.indigo,
            ),
          ),
          child: child!,
        );
      },
    );
    if (pickedDate != null) {
      setState(() {
        _tanggalLahirC.text = "${pickedDate.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50], // Background modern yang lembut
      appBar: AppBar(
        title: const Text(
          'Laporan Pengaduan Sekolah',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // SECTION 1: Identitas Pelapor
                _buildSectionHeader('Identitas Pelapor', Icons.person_pin_rounded),
                const SizedBox(height: 12),
                Card(
                  elevation: 2,
                  shadowColor: Colors.black12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _namaC,
                          decoration: InputDecoration(
                            labelText: 'Nama Lengkap',
                            hintText: 'Masukkan nama lengkap Anda',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            prefixIcon: const Icon(Icons.person_outline, color: Colors.indigo),
                          ),
                          validator: (v) {
                            if (v == null || v.isEmpty) return 'Nama tidak boleh kosong';
                            if (v.length < 3) return 'Nama minimal 3 huruf';
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _kelasC,
                          decoration: InputDecoration(
                            labelText: 'Kelas',
                            hintText: 'Contoh: XII RPL 1',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            prefixIcon: const Icon(Icons.school_outlined, color: Colors.indigo),
                          ),
                          validator: (v) {
                            if (v == null || v.isEmpty) return 'Kelas tidak boleh kosong';
                            if (v.length < 2) return 'Format kelas tidak valid';
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _tanggalLahirC,
                          decoration: InputDecoration(
                            labelText: 'Tanggal Lahir',
                            hintText: 'Pilih tanggal lahir',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            prefixIcon: const Icon(Icons.calendar_month_outlined, color: Colors.indigo),
                          ),
                          readOnly: true,
                          onTap: () => _pilihTanggal(context),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Tanggal lahir tidak boleh kosong';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Jenis Kelamin',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: RadioListTile<String>(
                                title: const Text('Laki-laki'),
                                value: 'Laki-laki',
                                groupValue: _gender,
                                activeColor: Colors.indigo,
                                contentPadding: EdgeInsets.zero,
                                onChanged: (v) => setState(() => _gender = v!),
                              ),
                            ),
                            Expanded(
                              child: RadioListTile<String>(
                                title: const Text('Perempuan'),
                                value: 'Perempuan',
                                groupValue: _gender,
                                activeColor: Colors.indigo,
                                contentPadding: EdgeInsets.zero,
                                onChanged: (v) => setState(() => _gender = v!),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // SECTION 2: Detail Pengaduan
                _buildSectionHeader('Detail Laporan', Icons.report_problem_outlined),
                const SizedBox(height: 12),
                Card(
                  elevation: 2,
                  shadowColor: Colors.black12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        DropdownButtonFormField<String>(
                          value: _kategori,
                          decoration: InputDecoration(
                            labelText: 'Pilih Kategori Pengaduan',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            prefixIcon: const Icon(Icons.category_outlined, color: Colors.indigo),
                          ),
                          items: ['Fasilitas Sekolah', 'Kebersihan', 'Bullying', 'Guru']
                              .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                              .toList(),
                          onChanged: (v) => setState(() => _kategori = v),
                          validator: (v) => v == null ? 'Pilih salah satu kategori pengaduan' : null,
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          maxLines: 4,
                          controller: _isiLaporanC,
                          decoration: InputDecoration(
                            alignLabelWithHint: true,
                            labelText: 'Isi Laporan / Pengaduan',
                            hintText: 'Jelaskan kronologi atau detail laporan secara jelas...',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            prefixIcon: const Padding(
                              padding: EdgeInsets.only(bottom: 65),
                              child: Icon(Icons.description_outlined, color: Colors.indigo),
                            ),
                          ),
                          validator: (v) {
                            if (v == null || v.isEmpty) return 'Isi laporan tidak boleh kosong';
                            if (v.length < 10) return 'Isi laporan minimal 10 karakter';
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // SECTION 3: Konfirmasi & Kirim
                Card(
                  elevation: 1,
                  color: Colors.indigo.withOpacity(0.04),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Colors.indigo.withOpacity(0.1)),
                  ),
                  child: SwitchListTile(
                    title: const Text(
                      'Saya menyatakan laporan ini benar dan jujur',
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                    ),
                    value: _setuju,
                    activeColor: Colors.indigo,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    onChanged: (v) => setState(() => _setuju = v),
                  ),
                ),
                const SizedBox(height: 24),

                // Tombol Kirim Modern (ElevatedButton dengan Gradient/Shadow)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: _kirim,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.send_rounded, size: 20),
                      SizedBox(width: 8),
                      Text(
                        'Kirim Pengaduan',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper widget untuk membuat header section yang rapi
  Widget _buildSectionHeader(String title, IconData icon) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Colors.indigo),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.indigo,
          ),
        ),
      ],
    );
  }
}