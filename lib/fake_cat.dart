import 'package:flutter/material.dart';
import './model/category.dart';
import './model/article.dart';

const FAKE_CATEGORIES = const [
  Category(
      id: 1, contenu: "session21", icon: Icons.ac_unit, color: Colors.black),
  Category(
      id: 3,
      contenu: "accesoire",
      icon: Icons.access_alarms,
      color: Colors.deepOrangeAccent),
  Category(
      id: 2,
      contenu: "bavuette",
      icon: Icons.access_alarms,
      color: Colors.deepOrangeAccent),
  Category(
      id: 4,
      contenu: "ballons",
      icon: Icons.access_alarms,
      color: Colors.deepOrangeAccent),
  Category(
      id: 5,
      contenu: "abonnement",
      icon: Icons.access_alarms,
      color: Colors.deepOrangeAccent),
];
var FAKE_ARTICLE = [
  Article(
      id: 1, name: "pull_session20/21", prix: 80, photo: ['1.jpg'], id_cat: 1),
  Article(
      id: 2,
      name: "bavuette",
      prix: 3.5,
      photo: ['bavuette/1.jpg', 'bavuette/2.jpg'],
      id_cat: 2),
  Article(
      id: 1,
      name: "pull super coupe",
      prix: 50,
      photo: ['super/1.jpg'],
      id_cat: 1),
  Article(id: 3, name: "mug", prix: 10, photo: ['acessoire/1.jpg'], id_cat: 3),
];
