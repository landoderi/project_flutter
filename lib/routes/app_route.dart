import 'package:flutter/widgets.dart';
import 'package:flutter_deryarpl3/container_widget/latihan_container.dart';
import 'package:flutter_deryarpl3/pages/form_output_page.dart';
import 'package:flutter_deryarpl3/pages/latihan_formulir.dart';
import 'package:flutter_deryarpl3/pages/formulir_input_page.dart';
import 'package:flutter_deryarpl3/listview_widget/latihan_list.dart';
import 'package:flutter_deryarpl3/gridview/latihan_grid.dart';
import 'package:flutter_deryarpl3/navigation/menu.dart';
import 'package:flutter_deryarpl3/row_column.dart/latihan_row_column.dart';
import 'package:flutter_deryarpl3/sized_box_stack/LatihanLayout.dart';

class AppRoute {
  static const menu = '/';
  static const list = '/list';
  static const grid = '/grid';
  static const layout = '/layout';
  static const rowcolumn = '/rowcolumn';
  static const container = '/container';
  static const formulir = '/formulir';
  static const hasil = '/hasil';
  static const latihanFormulir = '/latihan_formulir';


  static Map<String, WidgetBuilder> routes = {
    menu: (context) => ContohNav(),
    list: (context) => LatihanList(),
    grid: (context) => LatihanGrid(),
    layout:(context) => LatihanLayout(),
    rowcolumn:(context) => LatihanLayoutDua(),
    container:(context) => LatihanContainer(),
    formulir:(context) => FormEkskul(),
    hasil:(context) => HasilPage(nama: '', email: '', ekskul: '', gender: '', tgllahir: ''), // Tambahkan parameter tanggal lahir
    latihanFormulir:(context) => const LatihanFormulir(),
  };
}
