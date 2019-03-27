import 'package:flutter/material.dart';

/*
Alignment(0.0, 0.0)代表矩形的中心。-1.0到+1.0的距离是从矩形的一边到矩形的另一边的距离。因此，水平（或垂直）2.0单位等于矩形的宽度（或高度）。

Alignment(-1.0, -1.0) 表示矩形的左上角。

Alignment(1.0, 1.0) 代表矩形的右下角。

Alignment(0.0, 3.0) 表示相对于矩形水平居中并且矩形底部垂直下方的点由矩形的高度表示。

Alignment(0.0, -0.5) 表示相对于矩形水平居中并且在顶边和中心之间垂直中间的点。

Alignment(x, y) 在高度为h且宽度为w的矩形中，描述了矩形坐标系中的点（x * w / 2 + w / 2，y * h / 2 + h / 2）。

对齐使用视觉坐标，这意味着增加x将点从左向右移动。要支持具有从右到左TextDirection的布局 ，请考虑使用AlignmentDirectional，其中增加水平值时点移动的方向取决于TextDirection。

*/


void main() {
  runApp(
    new MaterialApp(
      title: 'Demo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Demo'),
        ),
        body: new Center(
          child: new Stack(//第一个子控件最下面
            alignment: new Alignment(0.0, 0.5),
            //statck
            children: <Widget>[
              new Align(
                alignment: FractionalOffset.center,
//          heightFactor: 40.0,
//          widthFactor: 40.0,
                child: new Image.network(//加载网络图片
                  'http://h.hiphotos.baidu.com/image/pic/item/21a4462309f790525fe7185100f3d7ca7acbd5e1.jpg',
                  height: 300.0,
                  width: 300.0,
                  repeat: ImageRepeat.repeat,//图片重复方式
                ),
              ),
              new Opacity(
                opacity: 0.5,//不透明度
                child: new Container(
                  width: 300.0,
                  height: 400.0,
                  color: Colors.blue,
                ),
              ),
              new Opacity(
                opacity: 0.3,
                child: new Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.red,
                ),
              ),
              new Opacity(
                opacity: 0.3,
                child: new Container(
                  width: 100.0,
                  height: 600.0,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}