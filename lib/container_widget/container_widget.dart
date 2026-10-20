import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {
    const BelajarContainer({super.key});

    @override
    Widget build(BuildContext context) {
        return Container(
        
        width: double.infinity,
        height: 400,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(top: 10),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black, width: 3),
            gradient: LinearGradient(
                colors: [
                 const Color.fromARGB(255, 199, 6, 6),
                const Color.fromARGB(255, 252, 251, 252),
                const Color.fromARGB(255, 40, 170, 0),
                ],
                begin: AlignmentGeometry.topRight,
                end: AlignmentGeometry.bottomLeft,
            ),
            image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWkjTgwmG-xOtC8AyDmATzXZxUHB4FPiiN2qZZhab7a_8fvKNfO8GqCo9X&s=100"
            ),
            // fit: BoxFit.fitWidth,
            ),
        
        ),
        transform: Matrix4.rotationX(0.2),
        child: Center(child: Text("Bismilah ferrari 1",
        style: TextStyle(
            color: Colors.white
        ),)),
        );
        }
        }
       