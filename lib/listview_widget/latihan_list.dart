import 'package:flutter/material.dart';

class LatihanList extends StatelessWidget {
  const LatihanList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
              "Jual kendaraan",
              style: TextStyle(color: Colors.white),
            ),
         backgroundColor: const Color.fromARGB(255, 73, 196, 253),
      ),
      body: ListView(
        children: [
          // ================= BAGIAN ATAS (VERTIKAL) =================
          const Padding(
            padding: EdgeInsets.all(12.0),
            
          ),
          Column(
            children: [
              Container(
                height: 300,
                width: 3000,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTpvo0sAGCMnJL6XjoOaigjfqxBA-7O93Dy6s2fhHrVg&s=10"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: const Text(
                  "Ferarri",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Container(
                height: 350,
                width: 3000,
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
                child: const Text("McLaren", style: TextStyle(color: Colors.white, fontSize: 25),),
              ),
               Container(
                height: 300,
                width: 3000,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx_k7Mo1tDjLSI6sO_DaZJTfiULt1ggk7jzP-3wIKJ0Q&s=10"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: const Text(
                  "Pagani",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
               Container(
                height: 300,
                width: 3000,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-zKHSTfVBtxzvr897llsviCGOILmWs2_1miMbWvTjTA&s=10"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: const Text(
                  "BMW M43",
                  style: TextStyle(color: Colors.white, fontSize: 25),
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
                  width: 300, // Lebar wajib diatur untuk item horizontal
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage("https://thumb.wikimedia.org/wikipedia/commons/thumb/5/51/Bendi_bakudo_Padang.JPG/330px-Bendi_bakudo_Padang.JPG?utm_source=id.wikipedia.org&utm_campaign=parser&utm_content=thumbnail"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: const Text(
                    "Kuda",
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
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm6V-peS8NqcOrlfBR-MV9QNcl9Uf_t4zRcfrx_B0mKlucLsO2hq9s7Ag&s=10"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: const Text(
                    "mobil jokowi",
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
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXQNmUrsiKpRFzKG_LJXjGBZRfyTqswv8gACyRnEPlrA&s=10"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: const Text(
                    "kopdes",
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
                      image: NetworkImage("https://pbs.twimg.com/media/HCofUWqawAIQhAB?format=webp&name=large"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: const Text(
                    "motor gus akira nakai 99",
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