import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
  final _brandNames = <Text>[];
  final _biggerFont = TextStyle(fontSize: 18.0);

  Widget _buildRow(Text brand) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0),
      margin: EdgeInsets.symmetric(vertical: 6.0),
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(
                  MdiIcons.badgeAccount,
                  size: 35,
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 20.0)),
              Text(brand.toString().split("\"")[1]),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildBrands() {
    _brandNames.clear();
    _brandNames.addAll([
      new Text("ElFornet"),
      new Text("BuenasMigas"),
      new Text("McDonalds"),
      new Text("Vivari"),
      new Text("LaTagliatella"),
      new Text("McDonalds"),
      new Text("BurgerKing")
    ]);

    return ListView.builder(
        padding: EdgeInsets.only(top: 16.0, left: 20),
        itemCount: _brandNames.length * 2,
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();
          final index = i ~/ 2;
          return _buildRow(_brandNames[index]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Fidelization"),
        ),
        body: _buildBrands());
  }
}
