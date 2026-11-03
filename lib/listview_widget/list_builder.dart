import 'package:flutter/material.dart';

class ListBuilderWidget extends StatelessWidget {
  ListBuilderWidget({super.key});

  var partai = ["Golongan karya", "PDIP", "BERKORBAN", "OPM"];
  var partaiColour = [Colors.amber, Colors.red, Colors.blue, Colors.green];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: partai.length,
      itemBuilder: (context, index) {
        return Container(
          height: 450,
          color: partaiColour[index],
          child: Center(child: Text(partai[index].toString())),
        );
      },
    );
  }
}
