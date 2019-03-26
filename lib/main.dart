import 'package:flutter/material.dart';

import './manager.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepPurple,
        accentColor: Colors.green
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('RandomList'),
        ),
        body: Manager('Food Taster'),
      ),
    );
  }
}

