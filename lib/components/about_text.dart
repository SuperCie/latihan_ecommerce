import 'package:flutter/material.dart';

class AboutText extends StatelessWidget {
  const AboutText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12.0),
      child: Text(
        'Ventela® Shoes, sebuah brand sepatu vulacanized lokal diperkenalkan pada tahun 2017 oleh William Ventela, seorang pemilik pabrik sepatu vulkanisir sejak tahun 1989 di Bandung, Jawa Barat.\n\n'
        'Ventela® Shoes memiliki berbagai macam jenis dan model yang cocok di gunakan untuk berbagai jenis kegiatan.\n\n'
        'Setiap pasang Ventela® Shoes melalui proses yang panjang dan detail, mulai dari pemilihan material, proses produksi hingga pemeriksaan kualitas yang sangat ketat. Hal ini dilakukan agar kualitas Ventela® Shoes terjaga dengan baik.\n\n'
        'Dengan sumber daya yang berlimpah Ventela® Shoes mampu memproduksi sepatu dengan kuantitas besar dan kualitas terbaik sehingga semua kalangan dapat memiliki sepatu berkualitas tinggi dengan harga yang terjangkau.',
        style: TextStyle(fontSize: 16),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
