import 'package:flutter/material.dart';

class Kartuprofil extends StatelessWidget {
  const Kartuprofil({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80,
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 6)],
        ),
        child: Row(
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTStLwxkrgRQl2OD35ona0e3l829rmhib7G0qFeYb1tkg&s=10"
                ),
              ),
            ),
            SizedBox(width: 12,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hitamtampan123"),
                  SizedBox(height: 4,),
                  Text("Tidak boleh tembak begal, atau saya penjarakan")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}