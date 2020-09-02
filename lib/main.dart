import 'package:flutter/material.dart';
import 'config/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FidelizationApp',
      theme: ThemeData(primaryColor: Colors.white),
      routes: Routes.getRoutes(),
      initialRoute: 'MainPage',
      debugShowCheckedModeBanner: false,
    );
  }
}
