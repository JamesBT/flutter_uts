import 'package:flutter/material.dart';
import 'package:flutter_uts/home/card2.dart';

class AllMenu extends StatefulWidget {
  const AllMenu({super.key});

  @override
  State<AllMenu> createState() => _AllMenuState();
}

class _AllMenuState extends State<AllMenu> {
  List<String> gambarMenu = [
    "lib/images/batagor.jpg",
    "lib/images/jiwatoast.jpg",
    "lib/images/kfc.jpg",
    "lib/images/nasgor.jpg",
    "lib/images/ramen.png",
    "lib/images/salad.jpg",
  ];

  List<String> namaMenu = [
    "batagor",
    "jiwa toast",
    "KFC",
    "nasi goreng",
    "ramen",
    "salad",
  ];

  List<String> alamatMenu = [
    "122 Queen Street",
    "23 Queen Street",
    "51 Queen Street",
    "40 Queen Street",
    "73 Queen Street",
    "121 Queen Street",
  ];

  List<String> deskripsiMenu = [
    "Street Food, Indonesia",
    "Toast, Indonesia",
    "Fried Chicken, American",
    "Fried Rice, Indonesia",
    "Noodle, Japan",
    "Salad",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.yellow),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          "All Menu",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 8.0),
        child: SizedBox(
          width: double.infinity, 
          child: ListView.builder(
            itemCount: gambarMenu.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0), 
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CardMenu2(
                      linkGambar: gambarMenu[index],
                      nama: namaMenu[index],
                      deskripsi: deskripsiMenu[index],
                      alamat: alamatMenu[index],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
