import 'package:flutter/material.dart';

class Product {
  final String nama;
  final String deskripsi;

  Product({required this.nama, required this.deskripsi});
}

class HomePage extends StatelessWidget {
  final List<Product> produk = [
    Product(
      nama: 'Baju',
      deskripsi: 'Terbuat dari kain',
    ),
    Product(
      nama: 'Celana',
      deskripsi: 'Terbuat dari kain',
    ),
    Product(
      nama: 'Tumbler',
      deskripsi: 'Botol minum plastik',
    ),
    Product(
      nama: 'Rok',
      deskripsi: 'Terbuat dari kain',
    ),
    Product(
      nama: 'Anting',
      deskripsi: 'Terbuat dari perak',
    ),
    Product(
      nama: 'Gelang',
      deskripsi: 'Terbuat dari emas',
    ),
    Product(
      nama: 'Kalung',
      deskripsi: 'Terbuat dari titanium',
    ),
    Product(
      nama: 'Gantungan Kunci',
      deskripsi: 'Gambar sage',
    ),
    Product(
      nama: 'Headphone',
      deskripsi: 'Digunakan di telinga',
    ),
    Product(
      nama: 'Topi',
      deskripsi: 'Terbuat dari jerami',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Produk'),
      ),
      body: ListView.builder(
        itemCount: produk.length,
        itemBuilder: (context, index) {
          Product product = produk[index];
          return ListTile(
            leading: Text((index++).toString()),
            title: Text(product.nama),
            subtitle: Text(product.deskripsi),
            trailing: const Icon(Icons.delete),
          );
        },
      ),
    );
  }
}