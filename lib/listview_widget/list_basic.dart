import 'package:flutter/material.dart';

class ListBasic extends StatelessWidget {
  const ListBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      
      children: [
        Container(
          width: 140,
          color: const Color.fromARGB(255, 219, 0, 0),
          child: Center(child: Text("Golongan saya")),
        ),
        Container(
          width: 140,
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Center(child: Text("STM KAPAL KARAM")),
        ),
        Container(
          width: 140,
          color: const Color.fromARGB(255, 0, 63, 180),
          child: Center(child: Text("BERTOBAT"),),
        )
      ],
    );
  }
}