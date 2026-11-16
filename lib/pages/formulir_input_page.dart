import 'package:flutter/material.dart';

class FormEkskul extends StatefulWidget {
  const FormEkskul({super.key});

  @override
  State<FormEkskul> createState() => _FormEkskulState();
}

class _FormEkskulState extends State<FormEkskul> {
  final _formKey = GlobalKey<FormState>(); // remote control form

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pendaftaran Ekskul')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey, // pasang remote ke form
          child: ListView(
            children: const [
              // kolom-kolom diisi di sini
            ],
          ),
        ),
      ),
    );
  }
}