import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FidelizationApp',
        theme: ThemeData(primaryColor: Colors.white),
        home: BrandLadder());
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
    return ExpansionTile(
      trailing: Icon(
        MdiIcons.circleOutline,
        size: 0,
      ),
      leading: Icon(
        MdiIcons.brain,
        size: 40,
      ),
      title: Text(
        brand.toString().split("\"")[1],
        style: _biggerFont,
      ),
    );
  }

  Widget _buildBrands() {
    _brandNames.clear();
    _brandNames.addAll([
      new Text("El fornet"),
      new Text("Buenas Migas"),
      new Text("Mc Donalds")
    ]);

    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: _brandNames.length + 2, // no funciona massa be
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
      body: _buildBrands(),
    );
  }
}
