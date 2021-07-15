import 'dart:io';

import 'package:flutter/material.dart';
import 'package:next/Screens/playgrounds/playgrounds.dart';

import 'package:next/models/category.dart';

import 'package:intl/intl.dart';

class CategoryList extends StatelessWidget {
  final List<Category> userCategory;

  CategoryList(this.userCategory);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: userCategory.isEmpty
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 50),
              child: Column(children: <Widget>[
                Image.asset('assets/images/no-category-image.jpg')
              ]),
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Playgrounds(),
                      ),
                    );
                  },
                  child: Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColorDark,
                                width: 2),
                          ),
                          width: 90,
                          padding: EdgeInsets.all(5),
                          child: Container(
                            width: 70.0,
                            height: 70.0,
                            decoration: new BoxDecoration(
                              image: new DecorationImage(
                                image: userCategory[index].image == null
                                    ? AssetImage('assets/images/as.png')
                                    : FileImage(
                                        File(userCategory[index].image)),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(userCategory[index].name,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            Text(
                              userCategory[index].location,
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              '\LE ${userCategory[index].price}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Theme.of(context).primaryColor),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: userCategory.length,
            ),
    );
  }
}
