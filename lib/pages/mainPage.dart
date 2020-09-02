import 'dart:io';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfidelizationapp/model/brand.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return BrandLadder();
  }
}

class BrandLadder extends StatefulWidget {
  @override
  _BrandLadderState createState() => _BrandLadderState();
}

class _BrandLadderState extends State<BrandLadder> {
  final _brands = <Brand>[];

  Widget _buildRow(Brand brand) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 40.0, left: 45.0, bottom: 40.0),
        decoration: BoxDecoration(
            color: brand.bg, border: Border.all(color: Colors.white30)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Transform.scale(
                    scale: 3,
                    child: ImageIcon(
                      brand.icon.image,
                      size: 40,
                    ),
                  ),
                  onPressed: () {},
                ),
                Padding(padding: EdgeInsets.only(left: 140.0)),
                Text(
                  brand.name.toUpperCase(),
                  style: GoogleFonts.muli(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBrands() {
    _brands.clear();

    _brands.add(new Brand(
        name: "El fornet",
        icon: Image.file(new File("/Users/dani/Downloads/fornet.png")),
        bg: Colors.green[700],
        has: 0,
        total: 10));
    _brands.add(new Brand(
        name: "Buenas Migas",
        icon: Image.file(new File("/Users/dani/Downloads/buenasmigas.png")),
        bg: Colors.black12,
        has: 0,
        total: 10));
    _brands.add(new Brand(
        name: "Vivari",
        icon: Image.file(new File("/Users/dani/Downloads/vivari.png")),
        bg: Colors.amber,
        has: 0,
        total: 10));

    for (var i = 0; i < 20; i++) {
      _brands.add(new Brand(
          name: "El fornet",
          icon: Image.file(new File("/Users/dani/Downloads/fornet.png")),
          bg: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0),
          has: 0,
          total: 10));
    }

    return ListView.builder(
        itemCount: _brands.length,
        itemBuilder: (context, i) {
          return _buildRow(_brands[i]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(10.0),
          child: AppBar(),
        ),
        body: _buildBrands());
  }
}
