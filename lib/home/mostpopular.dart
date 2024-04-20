import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uts/home/allmenu.dart';
import 'package:flutter_uts/home/card.dart';

class MostPopularMenu extends StatefulWidget {
  const MostPopularMenu({super.key});

  @override
  State<MostPopularMenu> createState() => _MostPopularMenuState();
}

class _MostPopularMenuState extends State<MostPopularMenu> {
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
    return Column(
      children: [
        // most popular dan see all
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Most Popular",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const AllMenu(),
                    ),
                  );
                },
                child: const Text(
                  "see all",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 17.0,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        // untuk kartu
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: gambarMenu.length,
              itemBuilder: (BuildContext context, int index) {
                return Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5,top: 5,left: 5),
                    child: CardMenu(
                      linkGambar: gambarMenu[index],
                      nama: namaMenu[index],
                      deskripsi: deskripsiMenu[index],
                      alamat: alamatMenu[index],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
