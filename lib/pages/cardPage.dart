import 'package:flutter/material.dart';
import 'package:myfidelizationapp/model/brand.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Brand brand = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(brand.name),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ImageIcon(brand.icon.image),
            Text('Click button to back to Main Page'),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.redAccent,
              child: Text('Back to Main Page'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
