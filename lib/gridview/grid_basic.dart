import 'package:flutter/material.dart';

class GridBasic extends StatelessWidget {
  const GridBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8
      ),
      children: [
        Container(
          color: Colors.amber,
          child: FlutterLogo(
            size: 50,
            style: FlutterLogoStyle.markOnly,
            textColor: Colors.green,
          ),
        ),
        Container(
          color: const Color.fromARGB(255, 0, 0, 0),
          child: FlutterLogo(size: 69, style: FlutterLogoStyle.horizontal),
        ),
        Container(
          color: const Color.fromARGB(255, 11, 138, 0),
          child: FlutterLogo(size: 64, style: FlutterLogoStyle.stacked),
        ),
        Container(
          color: const Color.fromARGB(255, 177, 0, 0),
          child: FlutterLogo(size: 64, style: FlutterLogoStyle.markOnly),
        ),
        Container(
          color: const Color.fromARGB(255, 119, 0, 230),
          child: FlutterLogo(size: 64, style: FlutterLogoStyle.horizontal),
        ),
      ]
    );
  }
}