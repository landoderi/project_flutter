import 'package:flutter/material.dart';

class LatihanContainer extends StatelessWidget {
    const LatihanContainer({super.key});

    @override
    Widget build(BuildContext context) {
        return Container(
        
        width: double.infinity,
        height: 400,
        margin: EdgeInsets.all(50),
        padding: EdgeInsets.only(top: 50),
        alignment: Alignment.bottomCenter,

        decoration: BoxDecoration(
            
            border: Border.all(color: Colors.blue, width: 3),
            // gradient: LinearGradient(
            //     colors: [
            //      const Color.fromARGB(255, 199, 6, 6),
            //     const Color.fromARGB(255, 252, 251, 252),
            //     const Color.fromARGB(255, 40, 170, 0),
            //     ],
            //     begin: AlignmentGeometry.topRight,
            //     end: AlignmentGeometry.bottomLeft,
            // ),
            image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpLGoZKsrERPhQDtJkI9DwsHBj1kQm43EYsKTfdJBM3g&s=10/encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWkjTgwmG-xOtC8AyDmATzXZxUHB4FPiiN2qZZhab7a_8fvKNfO8GqCo9X&s=100https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpLGoZKsrERPhQDtJkI9DwsHBj1kQm43EYsKTfdJBM3g&s=10"
            ),
            fit: BoxFit.fill,
            ),
        
        ),
        transform: Matrix4.rotationX(0.2),
        child: Center(child: Text
        ("Mesin W16 adalah mesin pembakaran internal dengan 16 silinder yang disusun dalam empat baris (masing-masing 4 silinder) membentuk huruf di sekitar satu poros engkol (crankshaft)",
        style: TextStyle(
            backgroundColor: Colors.white
        ), 
        )),
        );
        }
        }
       