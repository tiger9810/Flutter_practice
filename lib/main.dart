import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp()); 

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: RandomWords(),
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
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

// ListViewクラスのインスタンスを返す
  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i){
        // 偶数行の場合は_suggestionsリストに新しい単語を追加
        // 奇数行の場合はDividerクラスのインスタンスを返す
        if(i.isOdd) return Divider();
        final index = i ~/ 2;
        if(index >= _suggestions.length){
          _suggestions.addAll(generateWordPairs().take(10));
        }
        // _buildRowメソッドの呼び出し
        return _buildRow(_suggestions[index]);
      }
    );
  }
// ListTileクラスのインスタンスを返す
  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    // Textクラスのインスタンスを返す
    // 引数はランダムな英単語を生成するWordPairクラスのasPascalCaseプロパティ
    return Scaffold(
      appBar: AppBar(
        title: Text('Randoom!'),
      ),
      body: _buildSuggestions(),
    );
  }
}

