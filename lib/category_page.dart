import 'package:css_store/categories_items.dart';
import 'package:flutter/material.dart';

import 'fake_cat.dart';

class Category_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView(
      children: FAKE_CATEGORIES
          .map((echCategory) => categoryItem(
                category: echCategory,
              ))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    ));
  }
}
