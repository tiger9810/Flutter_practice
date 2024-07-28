import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp()); 

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(appBar: AppBar(
        title: RandomWords(),
      ),
      body: Center(
        // RandomWordsクラス(Widget)を呼び出す
        child: RandomWords(),
      ),
      )
    );
  }
}

// StatefulWidgetを継承するRandomWordsクラス(Widget)を作成
class RandomWords extends StatefulWidget {
  @override
  // RandomWordsStateクラスのインスタンスを返す
  RandomWordsState createState() => RandomWordsState();
}

// createState()で返されるRandomWordsStateクラスを定義する
class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    // Textクラスのインスタンスを返す
    // 引数はランダムな英単語を生成するWordPairクラスのasPascalCaseプロパティ
    return Text(wordPair.asPascalCase);
  }
}

