import 'package:flutter/material.dart';

class CardMenu2 extends StatefulWidget {
  final String linkGambar;
  final String nama;
  final String deskripsi;
  final String alamat;

  const CardMenu2({
    Key? key,
    required this.linkGambar,
    required this.nama,
    required this.deskripsi,
    required this.alamat,
  }) : super(key: key);

  @override
  State<CardMenu2> createState() => _CardMenu2State();
}

class _CardMenu2State extends State<CardMenu2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        // bayangan kartu
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: AspectRatio(
                aspectRatio: 16 / 11,
                child: Image.asset(
                  widget.linkGambar,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.nama,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text(
                  widget.alamat,
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  widget.deskripsi,
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}