import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget _buildStartRow() => Container(
        padding: const EdgeInsets.all(6),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(
              Icons.star,
              color: Colors.orange,
            ),
            Icon(
              Icons.star,
              color: Colors.orange,
            ),
            Icon(
              Icons.star,
              color: Colors.orange,
            ),
            Icon(
              Icons.star,
              color: Colors.white,
            ),
            Icon(
              Icons.star,
              color: Colors.white,
            ),
          ],
        ),
      );

  Widget _rating() => Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildStartRow(),
            const Text(
              '100 Reviews',
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            )
          ],
        ),
      );

  Widget _buildRow() => Row(
        children: <Widget>[
          Expanded(
            child: Image.asset('images/pic1.jpg'),
          ),
          Expanded(
            flex: 2,
            child: Image.asset('images/pic2.jpg'),
          ),
          Expanded(
            child: Image.asset('images/pic3.jpg'),
          ),
        ],
      );

  Widget _buildColumn() => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset('images/pic1.jpg'),
          Image.asset('images/pic2.jpg'),
          Image.asset('images/pic3.jpg'),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Flutter Layout App'),
          backgroundColor: Colors.orange[300],
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.orange[100],
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: _rating(),
          ),
        ),
      ),
    );
  }
}
