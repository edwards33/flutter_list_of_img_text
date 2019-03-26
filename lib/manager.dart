import 'package:flutter/material.dart';

import './products.dart';

import './control.dart';

class Manager extends StatefulWidget {
  final String startingProduct;

  Manager(this.startingProduct) {
    print('[Manager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[Manager Widget] createState()');
    return _ManagerState();
  }
}

class _ManagerState extends State<Manager> {

  List<String> _products = [];

  @override
  void initState() {
    print('[Manager State] initState()');
    // TODO: implement initState
    _products.add(widget.startingProduct);

    super.initState();
  }

  @override
  void didUpdateWidget(Manager oldWidget) {
    print('[Manager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
      print(_products);
    });
  }

  @override
  Widget build(BuildContext context){
    print('[Manager State] build()');

    return Column(children: [Container(
      margin: EdgeInsets.all(10.0),
      child: Control(_addProduct),
    ),
    Expanded(child: Products(_products)),
    ]);
  }
}