import 'package:flutter/cupertino.dart';

class Category {
  final int id;
  final String contenu;
  final Color color;
  final IconData icon;
  const Category(
      {@required this.id,
      @required this.contenu,
      @required this.icon,
      this.color});
}
