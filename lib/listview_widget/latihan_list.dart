import 'package:flutter/material.dart';

class LatihanList extends StatelessWidget {
  const LatihanList({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ListView(
      children: [
        Column(
          
          children: [
            Container(
              height: 200,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
               alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCMDxH3pny2srCgZhZ7Z62VkPiMwvldl2jOf2LQSYrJg&s=10"),  fit: BoxFit.fill,)
              ),
              child: Text("Bromo",
              style: TextStyle(color: Colors.white, fontSize: 25),),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
               alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(image: NetworkImage("https://images.pistonheads.com/nimg/43151/z.jpg"),  fit: BoxFit.fill,)
              ),
              child: Text("McLaren lu warna apa bos",
              style: TextStyle(color: Colors.white, fontSize: 15),),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
               alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrbvXtlhZGYvHuo8rM-jJPoqTy-UDjjNL406_UO3uczASaFra3s0y1qZ4&s=10"),  fit: BoxFit.fill,)
              ),
              child: Text("may hom",
              style: TextStyle(color: Colors.white, fontSize: 25),),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
               alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwfZvrG9ihJrdmCOjrXH9Hh-loUneQmDBEFJefr-wsUA&s=10"),  fit: BoxFit.fill,)
              ),
              child: Text("Ducati v4",
              style: TextStyle(color: Colors.white, fontSize: 25),),
            ),
            
          ],
        ),
        Padding(padding: const EdgeInsets.all(9.0),
        child: SingleChildScrollView(
          child: Row(
            children: [
              Container(
              height: 200,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
               alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrbvXtlhZGYvHuo8rM-jJPoqTy-UDjjNL406_UO3uczASaFra3s0y1qZ4&s=10"),  fit: BoxFit.fill,)
              ),
              child: Text("may hom",
              style: TextStyle(color: Colors.white, fontSize: 25),),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
               alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwfZvrG9ihJrdmCOjrXH9Hh-loUneQmDBEFJefr-wsUA&s=10"),  fit: BoxFit.fill,)
              ),
              child: Text("Ducati v4",
              style: TextStyle(color: Colors.white, fontSize: 25),),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
               alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrbvXtlhZGYvHuo8rM-jJPoqTy-UDjjNL406_UO3uczASaFra3s0y1qZ4&s=10"),  fit: BoxFit.fill,)
              ),
              child: Text("may hom",
              style: TextStyle(color: Colors.white, fontSize: 25),),
            ),
            Container(
              height: 20,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(100),
               alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwfZvrG9ihJrdmCOjrXH9Hh-loUneQmDBEFJefr-wsUA&s=10"),  fit: BoxFit.fill,)
              ),
              child: Text("Ducati v4",
              style: TextStyle(color: Colors.white, fontSize: 25),),
            ),
            
            ],
          ),
        ),
        )
      ],
      
    );
    
  }
}
