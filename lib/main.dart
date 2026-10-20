import 'package:flutter/material.dart';
import 'package:flutter_deryarpl3/container_widget/container_widget.dart';
import 'package:flutter_deryarpl3/container_widget/latihan_container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Flutter"),
          backgroundColor: Colors.blue,
        ),
        body: LatihanContainer(),
      ),
    );
  }
}

class HelloWidget extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Hello Flutter"),
    );
  }
}