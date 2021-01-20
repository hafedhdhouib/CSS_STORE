import 'package:flutter/cupertino.dart';

class Article {
  final int id;
  final String name, descrition;
  final double prix;
  Taille taille;
  List<String> photo = List<String>();
  final int id_cat;
  final bool disponible;
  Article(
      {@required this.id,
      @required this.name,
      this.descrition,
      this.taille,
      @required this.prix,
      @required this.photo,
      this.disponible = true,
      this.id_cat});
}

enum Taille { XS, S, L, XL, XLL }
