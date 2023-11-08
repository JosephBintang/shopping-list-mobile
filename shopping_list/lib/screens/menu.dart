import 'package:flutter/material.dart';
import 'package:shopping_list/widgets/left_drawer.dart';
import 'package:shopping_list/widgets/shop_card.dart';// Pastikan ini mengarah ke lokasi yang benar di proyek Anda


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ShopItem> items = [
      ShopItem("Lihat Produk", Icons.checklist),
      ShopItem("Tambah Produk", Icons.add_shopping_cart),
      ShopItem("Logout", Icons.logout),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Shopping List',
            style: TextStyle(color: Colors.white), // Ini mengatur warna teks menjadi putih
          ),
        ),
      ),
      drawer: const LeftDrawer(), // Ini adalah bagian yang ditambahkan untuk mengimplementasikan drawer
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  'PBP Shop',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GridView.count(
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((ShopItem item) {
                  return ShopCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

