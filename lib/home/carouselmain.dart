import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselMainPage extends StatefulWidget {
  const CarouselMainPage({super.key});

  @override
  State<CarouselMainPage> createState() => _CarouselMainPageState();
}

class _CarouselMainPageState extends State<CarouselMainPage> {
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

  List<String> nomorMenu = [
    "10 places",
    "10 places",
    "10 places",
    "10 places",
    "10 places",
    "10 places",
  ];

  int _current = 0;

  @override
  Widget build(BuildContext context) {

    double lebarLayar = MediaQuery.of(context).size.width;
    
    return Center(
      child: Container(
        height: lebarLayar > 700 ? MediaQuery.of(context).size.height * 0.6 : null,
        child: Stack(
          children: [
            CarouselSlider(
              items: gambarMenu.asMap().entries.map((entry) {
                int index = entry.key;
                String imageUrl = entry.value;
                String nama = namaMenu[index];
                String tempat = nomorMenu[index];
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            nama,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            tempat,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 1.0, //untuk full screen
                // untuk indicator carousel
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
            ),
            // untuk indikator carrousel
            Positioned(
              bottom: 12.5,
              right: 10.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: gambarMenu.asMap().entries.map((entry) {
                  int index = entry.key;
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin: EdgeInsets.symmetric(horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index ? Colors.white : Colors.grey,
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
