import 'package:css_store/model/article.dart';
import 'package:css_store/model/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:css_store/fake_cat.dart';

class Articlepage extends StatelessWidget {
  static const String routeName = '/ArticlePage';
  Category category;
  Articlepage({this.category});

  @override
  Widget build(BuildContext context) {
    List<Article> articles = FAKE_ARTICLE
        .where((article) => article.id_cat == this.category.id)
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Article from ${category.contenu}'),
      ),
      body: Container(
        child: articles.length > 0
            ? ListView.builder(
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  Article article = articles[index];
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [
                        Text(
                          '${article.name}',
                          style: TextStyle(fontSize: 30),
                        ),
                        Row(
                          children: [
                            Image(
                              width: 300,
                              height: 300,
                              image: AssetImage('1.jpg'),
                            ),
                          ],
                        ),
                        Text(
                          '${article.prix}',
                          style: TextStyle(fontSize: 30, color: Colors.indigo),
                        ),
                        RaisedButton(
                          child: Text('add'),
                          onPressed: () {},
                        ),
                        '${article.name}' == 'xl'
                            ? Icon(Icons.ac_unit)
                            : Text('')
                      ])
                    ],
                  );
                })
            : Text(
                'No foods found',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
      ),
    );
  }
}
