import 'package:flutter/material.dart';

class LatihanGrid extends StatelessWidget {
  const LatihanGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
           const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text("What is Flora and Fauna", style: TextStyle(fontSize: 30)),
           ),
           Container(
            height: 320,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10),
               image: const DecorationImage(
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-Lt8DfSQoxAiutRjDfRG37EV9ppn7oNWoZfG3jN4Htw&s=10"),
                    fit: BoxFit.fill,
                  ),
            ),
           ),
           Container(
             margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(20),
                child: Text("Scientists call this co-evolution flora and fauna–a relationship that plays out in our backyards, in gardens, on rainforest floors, and even in the deep oceans. This balance becomes exceptionally clear along the Pacific Slope of Mesoamerica, where endangered dry tropical forests and coastal wetlands put this relationship on full display. Understanding what flora and fauna are means understanding how these pieces fit together and why protecting them matters.", style: TextStyle(fontSize: 20)),
           ),
          Container(
            height: 1000,
            width: 10,
              
                padding: const EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 241, 241, 241),
              borderRadius: BorderRadius.circular(50),
              
            ),
            child: GridView(
     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8
      ),
      children: [
       Container(
         child:  Text("Flora", style: TextStyle(fontSize: 25))
       ),
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
    )
          
           ),
          
        ],
        
      ),
      
    );
  }
}