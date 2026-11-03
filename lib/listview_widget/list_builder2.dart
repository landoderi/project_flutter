import 'package:flutter/material.dart';

class ListBuilder2 extends StatelessWidget {
  ListBuilder2({super.key});

  final List<Map<String, dynamic>> siswa = [
    {'nama': 'Abdul', 'Kelas': 'XII RPL 3', 'Umur': 17},
    {'nama': 'Abdul', 'Kelas': 'XII RPL 3', 'Umur': 17},
    {'nama': 'Abdul', 'Kelas': 'XII RPL 3', 'Umur': 17},
    {'nama': 'Abdul', 'Kelas': 'XII RPL 3', 'Umur': 17},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: siswa.length,
      itemBuilder: (context, index) {
        final data = siswa[index];
        return Card(
          margin: EdgeInsets.all(10),
          child: ListTile(
            leading: CircleAvatar(child: Text(data['nama'][0])),
            title: Text(data['nama']),
            subtitle: Text("${data['kelas']} - ${data['umur'].toString()} Tahun"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        );
      },
    );
  }
}
