import 'package:flutter/material.dart';

class Expandedwidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 50, color: Colors.amber),

        Expanded(
          flex: 1,
          child: Container(
            height: double.infinity,
            color: const Color.fromARGB(255, 233, 5, 1),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: double.infinity,
            color: const Color.fromARGB(255, 0, 255, 94),
          ),
        )
      ],
    );
  }
}