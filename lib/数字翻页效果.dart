import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: '数字翻页效果',
    home: Scaffold(
      appBar: AppBar(
        title: Text('Welcome to flutter, hello word'),
      ),
      body:  Center(
        child: new FlipWidget(
          child: new Text('1'),
        ),
      ),
    ),
  ));
}

class FlipWidget extends StatelessWidget {
  Widget child;

  FlipWidget({Key key, this.child}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ClipRect(
          child: Align(
            alignment: Alignment.topCenter,
            heightFactor: 0.5,
            child: child,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 2.0),
        ),
        ClipRect(
          child: Align(
            child: Align(
              alignment: Alignment.bottomCenter,
              heightFactor: 0.5,
              child: child,
            ),
          ),
        )
      ],
    );
  }
}
