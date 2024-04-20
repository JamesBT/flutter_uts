import 'package:flutter/material.dart';

class TopFoodie extends StatefulWidget {
  const TopFoodie({super.key});

  @override
  State<TopFoodie> createState() => _TopFoodieState();
}

class _TopFoodieState extends State<TopFoodie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Foodie'),
      ),
      body: const Center(
        child: Text(
          'TOP FOODIE',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}