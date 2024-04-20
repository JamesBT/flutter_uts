import 'package:flutter/material.dart';
import 'package:flutter_uts/home/carouselmain.dart';
import 'package:flutter_uts/home/mealdeals.dart';
import 'package:flutter_uts/home/mostpopular.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(
          0xFFF3F2F5,
        ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey),
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.yellow),
            onPressed: () {
              // tidak ke mana2
            },
          ),
          title: const Text(
            "Sydney CBD",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(48.0),
            child: Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search for restaurant',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // carousel
                  SizedBox(
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: CarouselMainPage(),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // list view most popular
                  MostPopularMenu(),
                  SizedBox(
                    height: 20,
                  ),
                  // list view meal deals
                  MealDealsMenu(),
                  SizedBox(
                    height: 20,
                  ),
                  //navigation bar
                ],
              ),
              // list view untuk most popular

              // list view untuk meal deals
            ),
          ],
        ),
      ),
    );
  }
}
