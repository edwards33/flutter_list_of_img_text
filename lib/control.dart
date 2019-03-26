import 'package:flutter/material.dart';
import "dart:math";

class Control extends StatelessWidget {

  var _productNames = const ['Fruits','Vegetables','Meat','Cheese'];

  final Function addProduct;

  Control(this.addProduct);

  final _random = new Random();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addProduct(_productNames[_random.nextInt(_productNames.length)]);
      },
      child: Text('Add Image'),
    );
  }
}