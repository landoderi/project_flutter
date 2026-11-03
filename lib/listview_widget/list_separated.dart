import 'package:flutter/material.dart';

class ListSeparatedWidget extends StatelessWidget {
  ListSeparatedWidget({super.key});

  var partai = ["Golongan karya", "PDIP", "BERKORBAN", "OPM"];
  var partaiColour = [Colors.amber, Colors.red, Colors.blue, Colors.green];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: partai.length,
      itemBuilder: (context, index) {
        return Container(
          height: 450,
          color: partaiColour[index],
          child: Center(child: Text(partai[index].toString())),
        );
        
      },
      separatorBuilder: (context, index) {
        return Divider(
          color: Colors.black,
          height: 10,
          radius: BorderRadius.circular(12),
          endIndent: 100,
        );
      }
    );
  }
}
