import 'package:flutter/material.dart';
import "dart:math";

class Products extends StatelessWidget{

  final List<String> products;

  var _productImages = const ['images/fruits.jpg','images/vegetables.jpg','images/meat.jpg','images/cheese.jpeg'];

  Products(this.products) {
    print('[Products Widget] Constructor');
  }

  final _random = new Random();

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(children: <Widget>[
        Image.asset(_productImages[_random.nextInt(_productImages.length)]),
        Text(products[index])
      ],),
    );
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    );
  }
}