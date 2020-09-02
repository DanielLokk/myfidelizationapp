import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Brand {
  final String name;
  final Image icon;
  final Color bg;
  final int has;
  final int total;

  const Brand({
    @required this.name,
    @required this.icon,
    this.bg,
    @required this.has,
    @required this.total,
  });
}
