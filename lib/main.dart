// material designを使用するためのパッケージのimport
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

// 返り値を返さないmain関数にrunApp関数を代入する
// runApp関数は引数にWidgetを取り、それを画面に表示する機能を持つ
// void main()のvoidとは、返り値がないことを示す。
void main() => runApp(MyApp()); 

// class MyAppはStatelessWidgetクラスを継承する
// StatelessWidgetクラスは、状態を持たないWidgetを作成するためのクラス
// 一度描画されたら変更されることがないWidgetを作成するためのクラス
class MyApp extends StatelessWidget {

  // @overrideは、継承元のクラスにあるメソッドを上書きすることを示す
  @override
  
 //Widget buildのbuildは、メソッド名でWidgetは返り値の型。
 // buildメソッドは、Widgetを返すメソッドで、画面に表示する内容を記述する
 // 引数にはBuildContextクラスのcontextという変数を取る
 // contextは、Widgetがどの位置に描画されるかを示す情報を持つ
  Widget build(BuildContext context) { 
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(appBar: AppBar(
        title: Text('Welcome to Flutter'),
      ),
      body: Center(
        child: Text('Hello World'),
      ),
      )
    );
  }
}

