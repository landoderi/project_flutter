import 'package:flutter/material.dart';

class LayoutColumnWidget extends StatelessWidget {
  const LayoutColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      width: double.infinity,
      height: 100,
      color: const Color.fromARGB(255, 255, 109, 109),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Icon(Icons.call, size: 48), Text("Call")],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Icon(Icons.share, size: 48), Text("Share")],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Icon(Icons.navigation, size: 48), Text("Call")],
          ),
        ],
      ),
    ),);
  }
}