import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   // final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Startup Name Generator'),
        ),
        body: Center(
          //child: Text(wordPair.asPascalCase),
          child:RandomWords(),
        ),
      ),
    );
  }
}
// create a minimal state class
class RandomWordsState extends State<RandomWords> { //maintains state for widget
  //add suggestions list and font var
  final _suggestions = <WordPair>[]; // an underscore enforces privacy in dart
  final _biggerFont = const TextStyle(fontSize: 18.0);
  //add build() method
  @override


  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Scaffold(
      body: _buildSuggestions(),
    );
  }
  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return Divider(); /*2*/

          final index = i ~/ 2; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}

//add stateful RandomWords widget

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}