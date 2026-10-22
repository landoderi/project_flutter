import 'package:flutter/material.dart';

class  KartuDashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 80,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text("Masukan"),
            ),
          ),
          SizedBox(width: 10),
          Expanded(child: Container(
            height: 80,
            color: const Color.fromARGB(255, 121, 195, 255),
            alignment: Alignment.center,
            child: Text("Pengaturan"),
          )),
          SizedBox(width: 10,),
          Expanded(child: Container(
            height: 80,
            color: const Color.fromARGB(255, 255, 255, 255),
            alignment: Alignment.center,
            child: Text("Pengaturan"),
          ))
        ],
      ),
    );
  }
}