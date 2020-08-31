
//import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        primaryColor: Colors.purple,
      ),
      home: Scaffold(
        body: Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}

/* String formatName(WordPair pair) { //example function
  return pair.first + " of the grand " + pair.second;
}
 */
// create a minimal state class
class RandomWordsState extends State<RandomWords> {
  //maintains state for widget
  //add suggestions list and font var // stores
  final List<WordPair> _suggestions = <WordPair>[];
  final Set<WordPair> _saved = Set<WordPair>(); 
  final TextStyle _biggerFont = TextStyle(fontSize: 18.0);
 

  void _pushSaved() { //function for saving 
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (BuildContext context) {
          final Iterable<ListTile> tiles = _saved.map(
            (WordPair pair) {
              return ListTile(
                title: Text(
                   pair.asPascalCase,
                 // formatName(pair), //example refactor
                  style: _biggerFont,
                ),
              );
            },
          );
          final List<Widget> divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList();
          return Scaffold(
            appBar: AppBar(
              title: Text('Saved Suggestions'),
            ),
            body: ListView(children: divided),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.list), onPressed: _pushSaved), //A bug
        ],
      ),
    
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder:  (context, i) {  //B bug
          if (i.isOdd) return Divider();

          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
         //   _suggestions.addAll(generateWordPairs(maxSyllables: 3).where((p) => syllables(p.first) == 1 && syllables(p.second) == 1).take(10)); //example refactor 
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) { //look up english words api documentation 
    final bool alreadySaved = _saved.contains(pair);
    return ListTile(
      title: Text(
         pair.asPascalCase,
       // formatName(pair), //rexample refactor
        style: _biggerFont,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
      /*   final player = AudioCache(); //TODO: finish makeing this play a sound on tap
        player.play('e1Like.wav'); */
        setState(() {
          //triggers build method
          // if the name is saved remove it, else add it
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair); //C bug
          }
        });
      },
    );
  }
}

//stateful RandomWords widget
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

