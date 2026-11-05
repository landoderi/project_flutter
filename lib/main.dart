import 'package:flutter/material.dart';
import 'package:flutter_deryarpl3/container_widget/latihan_container.dart';
import 'package:flutter_deryarpl3/gridview/grid_basic.dart';
import 'package:flutter_deryarpl3/gridview/grid_builder_widget.dart';
import 'package:flutter_deryarpl3/gridview/latihan_grid.dart';
import 'package:flutter_deryarpl3/listview_widget/latihan_list.dart';
import 'package:flutter_deryarpl3/listview_widget/list_basic.dart';
import 'package:flutter_deryarpl3/listview_widget/list_builder.dart';
import 'package:flutter_deryarpl3/listview_widget/list_builder2.dart';
import 'package:flutter_deryarpl3/listview_widget/list_separated.dart';
import 'package:flutter_deryarpl3/navigation/about_page.dart';
import 'package:flutter_deryarpl3/navigation/contoh_nav.dart';
import 'package:flutter_deryarpl3/row_column.dart/latihan_row_column.dart';
import 'package:flutter_deryarpl3/sized_box_stack/LatihanLayout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/grid': (context) => const LatihanGrid(),
        '/list': (context) => const LatihanList(),
        '/layout': (context) => const LatihanLayout(),
        '/rowcolumn': (context) => const LatihanLayoutDua(),
        '/container': (context) => const LatihanContainer(),
        '/': (context) => Scaffold(
          appBar: AppBar(
            title: const Text(
              "Flutter",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: const Color.fromARGB(255, 3, 3, 3),
          ),
          body: ContohNav(),
        ),
      },
    );
  }
}

// Perbaikan nama constructor HelloWidget
class HelloWidget extends StatelessWidget {
  const HelloWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Hello Flutter"),
    );
  }
}