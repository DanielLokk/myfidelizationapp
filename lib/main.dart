import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Welcome to Flutter', home: brandLadder());
  }
}

class brandLadder extends StatefulWidget {
  @override
  _brandLadderState createState() => _brandLadderState();
}

class _brandLadderState extends State<brandLadder> {
  final _brandNames = <Text>[];
  final _biggerFont = TextStyle(fontSize: 18.0);

  Widget _buildRow(Text brand) {
    return ListTile(
      title: Text(
        brand.toString(),
        style: _biggerFont,
      ),
    );
  }

  Widget _buildBrands() {
    _brandNames.addAll([new Text("El fornet"), new Text("Buenas Migas")]);
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();
          final index = i ~/ 2;
          return _buildRow(_brandNames[index]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBrands(),
    );
  }
}
