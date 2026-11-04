import 'package:flutter/material.dart';
import 'package:flutter_deryarpl3/gridview/grid_basic.dart';
import 'package:flutter_deryarpl3/gridview/grid_builder_widget.dart';
import 'package:flutter_deryarpl3/gridview/latihan_grid.dart';
import 'package:flutter_deryarpl3/listview_widget/latihan_list.dart';
import 'package:flutter_deryarpl3/listview_widget/list_basic.dart';
import 'package:flutter_deryarpl3/listview_widget/list_builder.dart';
import 'package:flutter_deryarpl3/listview_widget/list_builder2.dart';
import 'package:flutter_deryarpl3/listview_widget/list_separated.dart';
import 'package:flutter_deryarpl3/sized_box_stack/LatihanLayout.dart';

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
          title: const Text("FloraFauna",
          style: TextStyle(
          color: Colors.white
          ),),
          backgroundColor: const Color.fromARGB(255, 0, 119, 16),
          
        ),
        body: LatihanGrid(
          
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