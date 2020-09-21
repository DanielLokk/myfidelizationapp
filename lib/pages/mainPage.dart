import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myfidelizationapp/model/brand.dart';
import 'package:myfidelizationapp/model/data.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List _brands = AppData.brandsList;

  Widget _buildRow(Brand brand) {
    return InkWell(
      onTap: () => {Navigator.pushNamed(context, '/cards')},
      child: Container(
        padding: EdgeInsets.only(top: 35.0, left: 45.0, bottom: 35.0),
        decoration: BoxDecoration(
            color: brand.bg, border: Border.all(color: Colors.white30)),
        child: FractionalTranslation(
          translation: Offset(-0.06, 0.0),
          child: IconButton(
            icon: Transform.scale(
              scale: 4,
              child: ImageIcon(
                brand.icon.image,
                size: 40,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/cards',
                arguments: brand,
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildBrands() {
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
          preferredSize: Size.fromHeight(5.0),
          child: AppBar(),
        ),
        body: _buildBrands());
  }
}
