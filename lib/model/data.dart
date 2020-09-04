import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myfidelizationapp/model/brand.dart';

class AppData {
  static List<Brand> brandsList = [
    Brand(
        name: "El fornet",
        icon: Image.file(new File("/Users/dani/Downloads/fornet.png")),
        bg: Colors.green[700],
        has: 0,
        total: 10),
    Brand(
        name: "Buenas Migas",
        icon: Image.file(new File("/Users/dani/Downloads/buenasmigas.png")),
        bg: Colors.black12,
        has: 0,
        total: 10),
    Brand(
        name: "Vivari",
        icon: Image.file(new File("/Users/dani/Downloads/vivari.png")),
        bg: Colors.amber,
        has: 0,
        total: 10),
  ];
}
