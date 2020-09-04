import 'package:flutter/material.dart';
import 'package:myfidelizationapp/pages/mainPage.dart';
import 'package:myfidelizationapp/pages/cardPage.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes() {
    return <String, WidgetBuilder>{
      '/': (_) => MainPage(),
      '/cards': (_) => CardPage(),
    };
  }
}
