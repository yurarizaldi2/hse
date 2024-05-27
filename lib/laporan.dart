import 'package:flutter/material.dart';
//import 'package:hse_apps/inputdb.dart';
import 'package:hse_apps/inspeksi.dart';

void main() {
  runApp(const Laporan());
}

class Laporan extends StatelessWidget {
  const Laporan({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HSE Apps DB',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const InspeksiDB(),
    );
  }
}