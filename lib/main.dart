import 'package:flutter/material.dart';
import 'package:flutter_deryarpl3/container_widget/container_widget.dart';
import 'package:flutter_deryarpl3/container_widget/latihan_container.dart';
import 'package:flutter_deryarpl3/row_column.dart/column_widget.dart';
import 'package:flutter_deryarpl3/row_column.dart/latihan_row_column.dart';
import 'package:flutter_deryarpl3/row_column.dart/layout_widget.dart';
import 'package:flutter_deryarpl3/row_column.dart/row_widget.dart';
import 'package:flutter_deryarpl3/sized_box_stack/LatihanLayout.dart';
import 'package:flutter_deryarpl3/sized_box_stack/LayoutDua.dart';
import 'package:flutter_deryarpl3/sized_box_stack/LayoutEmpat.dart';
import 'package:flutter_deryarpl3/sized_box_stack/LayoutSatu.dart';
import 'package:flutter_deryarpl3/sized_box_stack/LayoutTiga.dart';
import 'package:flutter_deryarpl3/sized_box_stack/StackWidget.dart';

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
          title: const Text("Berita Hari Ini",
          style: TextStyle(
          color: Colors.white
          ),),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          
        ),
        body: Latihanlayout(
          
        ),
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