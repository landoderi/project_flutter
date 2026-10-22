import 'package:flutter/material.dart';

class ProfilWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(height: 140, color: const Color.fromARGB(255, 0, 119, 255),),
            Positioned(
              bottom: -30,
              left: 20,
              child: SizedBox(
                width: 80,
                height: 80,
                child: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQhyd1pSrIqt3mGUQ4erE2ONPRTUc7IY5jl-_O9Vtt5g&s=10"),),
              ),
            ),
          ],
        ),
        SizedBox(height: 40,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text("Zatak Bionis"), Text("Tel aviv")],
            ))
          ],
        ),),
        ElevatedButton(onPressed: () {}, child: Text("Follow"),)
      ],
    );
  }
}