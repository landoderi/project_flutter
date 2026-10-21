import 'dart:ui';

import 'package:flutter/material.dart';

class LatihanRowColumn extends StatelessWidget {
  const LatihanRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.only(right: 10, left: 10),
      color: Colors.purple,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Ini Text",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            height: 40,
            width: 520,
            color: Colors.amber,
          )
        ],
      ),
      );
      
    
  }
}