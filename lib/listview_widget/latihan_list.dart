import 'package:flutter/material.dart';

class LatihanList extends StatelessWidget {
  const LatihanList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // ================= BAGIAN ATAS (VERTIKAL) =================
          const Padding(
            padding: EdgeInsets.all(12.0),
            
          ),
          Column(
            children: [
              Container(
                height: 200,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCMDxH3pny2srCgZhZ7Z62VkPiMwvldl2jOf2LQSYrJg&s=10"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: const Text(
                  "Bromo",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Container(
                height: 200,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: NetworkImage("https://images.pistonheads.com/nimg/43151/z.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // ================= BAGIAN BAWAH (HORIZONTAL) =================
          const Padding(
            padding: EdgeInsets.all(12.0),
            
          ),
          SizedBox(
            height: 220, // Menentukan tinggi area horizontal
            child: ListView(
              scrollDirection: Axis.horizontal, // Membuat list bisa digulir ke samping
              children: [
                Container(
                  height: 200,
                  width: 250, // Lebar wajib diatur untuk item horizontal
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrbvXtlhZGYvHuo8rM-jJPoqTy-UDjjNL406_UO3uczASaFra3s0y1qZ4&s=10"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: const Text(
                    "may hom",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                Container(
                  height: 200,
                  width: 250,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwfZvrG9ihJrdmCOjrXH9Hh-loUneQmDBEFJefr-wsUA&s=10"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: const Text(
                    "Ducati v4",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                Container(
                  height: 200,
                  width: 250,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrbvXtlhZGYvHuo8rM-jJPoqTy-UDjjNL406_UO3uczASaFra3s0y1qZ4&s=10"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: const Text(
                    "may hom",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                Container(
                  height: 200,
                  width: 250,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrbvXtlhZGYvHuo8rM-jJPoqTy-UDjjNL406_UO3uczASaFra3s0y1qZ4&s=10"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: const Text(
                    "may hom",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30), // Spasi tambahan di bagian paling bawah
        ],
      ),
    );
  }
}