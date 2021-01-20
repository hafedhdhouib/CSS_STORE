import 'dart:ui';

import 'package:css_store/model/atricle_page.dart';
import 'package:flutter/material.dart';
import './model/category.dart';

class categoryItem extends StatelessWidget {
  Category category;
  categoryItem({this.category});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Articlepage(
                category:
                    this.category) //you can send parameters using constructor

            ));
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              this.category.icon,
              color: Colors.white,
            ),
            Text(
              this.category.contenu,
              style: TextStyle(color: Colors.white, fontFamily: 'XanhMono'),
            )
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              this.category.color.withOpacity(0.8),
              this.category.color
            ], begin: Alignment.topRight, end: Alignment.bottomLeft),
            color: this.category.color,
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
