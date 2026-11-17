import 'package:flutter/material.dart';
import 'package:flutter_deryarpl3/pages/output_latihan_formulir.dart';

class LatihanFormulir extends StatefulWidget {
  const LatihanFormulir({super.key});

  @override
  State<LatihanFormulir> createState() => _LatihanFormulirState();
}

class _LatihanFormulirState   extends State<LatihanFormulir> {
  final _formKey = GlobalKey<FormState>();
  final _namaC = TextEditingController();
  final _kelasC = TextEditingController();
  final _tanggalLahirC = TextEditingController();
  final _isiLaporanC = TextEditingController(); // Tambahan controller isi laporan

  String? _kategori;
  String _gender = 'Laki-laki';
  bool _setuju = false;

  @override
  void dispose() {
    _namaC.dispose();
    _kelasC.dispose();
    _tanggalLahirC.dispose();
    _isiLaporanC.dispose(); // Dispose controller isi laporan
    super.dispose();
  }

  void _kirim() {
    if (_formKey.currentState!.validate()) {
      if (!_setuju) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Kamu harus menyetujui laporan ini')),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Laporan Pengaduhan Sekolah')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _namaC,
                decoration: const InputDecoration(
                  labelText: 'Nama Lengkap',
                  border: OutlineInputBorder(),
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
                decoration: const InputDecoration(
                  labelText: 'Kelas',
                  border: OutlineInputBorder(),
                ),
                validator: (v) {
                  if (v == null || v.isEmpty) return 'Kelas tidak boleh kosong';
                  if (v.length < 3) return 'Nama minimal 3 huruf';
                  return null;
                },
              ),
               const SizedBox(height: 10),
              TextFormField(
                controller: _tanggalLahirC,
                decoration: const InputDecoration( // Diperbaiki: ditambah titik dua dan const
                  labelText: 'Tanggal Lahir',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Input tanggal lahir tidak boleh kosong';
                  }
                  return null;
                },
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                  );
                  if (pickedDate != null) {
                    setState(() {
                      _tanggalLahirC.text = "${pickedDate.toLocal()}".split(' ')[0];
                    });
                  }
                },
              ),
              const SizedBox(height: 8),
              RadioListTile<String>(
                title: const Text('Laki-laki'),
                value: 'Laki-laki',
                groupValue: _gender,
                onChanged: (v) => setState(() => _gender = v!),
              ),
              RadioListTile<String>(
                title: const Text('Perempuan'),
                value: 'Perempuan',
                groupValue: _gender,
                onChanged: (v) => setState(() => _gender = v!),
              ),
               const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _kategori,
                decoration: const InputDecoration(
                  labelText: 'Pilih Kategori',
                  border: OutlineInputBorder(),
                ),
                items: ['Fasilitas Sekolah', 'Kebersihan', 'Bullying', 'Guru']
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (v) => setState(() => _kategori = v),
                validator: (v) => v == null ? 'Pilih salah satu ekskul' : null,
              ),
               const SizedBox(height: 19,),
               TextFormField(
                maxLines: 4,
                controller: _isiLaporanC,
                decoration: const InputDecoration(
                  alignLabelWithHint: true,
                  labelText: 'Isi laporan',
                  border: OutlineInputBorder(),
                ),
                validator: (v) {
                  if (v == null || v.isEmpty) return 'Isi Laporan tidak boleh kosong';
                  if (v.length < 3) return 'Isi laporan minimal 5 kata';
                  return null;
                },
              ),
               const SizedBox(height: 16),
              SwitchListTile(
                title: const Text('Saya jujur dengan mengisi laporan ini'),
                value: _setuju,
                onChanged: (v) => setState(() => _setuju = v),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _kirim,
                child: const Text('Kirim'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}