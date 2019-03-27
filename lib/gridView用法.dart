import 'package:flutter/gestures.dart';
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
          childAspectRatio: 2.0, // 缩放比例 宽、 高比
        ),
        children: <Widget>[
          Text(
            '1111',
            textAlign: TextAlign.center, //文本对齐方式  居中
            textDirection: TextDirection.ltr, //文本方向
            softWrap: false, //是否自动换行 false文字不考虑容器大小  单行显示   超出；屏幕部分将默认截断处理
            overflow: TextOverflow
                .ellipsis, //文字超出屏幕之后的处理方式  TextOverflow.clip剪裁   TextOverflow.fade 渐隐  TextOverflow.ellipsis省略号
            textScaleFactor: 2.0, //字体显示的赔率
            maxLines: 10, //最大行数
            style: new TextStyle(
              decorationColor: const Color(0xf00ffff), //线的颜色
              decoration: TextDecoration
                  .none, //none无文字装饰   lineThrough删除线   overline文字上面显示线    underline文字下面显示线
              decorationStyle: TextDecorationStyle
                  .solid, //文字装饰的风格  dashed,dotted虚线(简短间隔大小区分)  double三条线  solid两条线
              wordSpacing: 0.0, //单词间隙(负值可以让单词更紧凑)
              letterSpacing: 0.0, //字母间隙(负值可以让字母更紧凑)
              fontStyle: FontStyle.italic, //文字样式，斜体和正常
              fontSize: 20.0, //字体大小
              fontWeight: FontWeight.w900, //字体粗细  粗体和正常
              color: const Color(0xf00fffff), //文字颜色
            ),
          ),
          Text('222'),
          Text('8888'),
          Text('llllk'),
          Text('kjkjll'),
          new Text.rich( // rich Text 可以设置不同文字不同样式
            new TextSpan(
              text: 'TextSpan',
              style: new TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                decoration: TextDecoration.none,
              ),
              children: <TextSpan>[
                new TextSpan(
                  text: '拼接1',
                ),
                new TextSpan(
                  text: '拼接2',
                ),
                new TextSpan(
                  text: '拼接3',
                ),
                new TextSpan(
                  text: '拼接4',
                ),
                new TextSpan(
                  text: '拼接5',
                ),
                new TextSpan(
                  text: '拼接6',
                ),
                new TextSpan(
                  text: '拼接7llllllllllll',
                  style: new TextStyle(
                    color: Colors.yellow,
                  ),
//                  recognizer:new TapGestureRecognizer()..onTap=(){//增加一个点击事件  （没有生效。下次再试）
//                    print('@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@');
//                  },
                  children: <TextSpan>[
                    TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' world!'),
                  ],
                ),
              ],
            ),
          ),
        ],
      )
    ),
  ));
}
