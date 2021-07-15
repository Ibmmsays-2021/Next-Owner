import 'package:flutter/material.dart';
import 'package:next/Screens/category_list.dart';
import 'package:next/Screens/new_category.dart';
import 'package:next/models/category.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<Category> _transactions = [
    // Category('1', 'name', 45, 'asas'),
  ];

  void _addNewCategory(
      String name, String price, String location, String image) {
    final newcat = Category(name, price, location, image);
    setState(() {
      _transactions.add(newcat);
    });
  }

  void _satrtAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: ctx,
      builder: (_) {
        return NewCategory(_addNewCategory);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[CategoryList(_transactions)],
        ),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _satrtAddNewTransaction(context),
      ),
    );
  }
}
