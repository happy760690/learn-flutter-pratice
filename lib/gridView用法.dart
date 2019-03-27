import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Grid View 用法',
    home: Scaffold(
      appBar: AppBar(
        title: Text('Welcome to flutter Grid View'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 2.0,
          childAspectRatio: 1.0,
        ),
        children: <Widget>[
          Text('1111'),
          Text('222'),
          Text('8888'),
          Text('llllk'),
          Text('kjkjll')
        ],
      )
    ),
  ));
}
