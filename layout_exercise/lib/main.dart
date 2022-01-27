import 'package:flutter/material.dart';

import 'widgets/header.dart';
import 'widgets/infomation.dart';
import 'widgets/iconList.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Exercise',
      theme: ThemeData(
        textTheme: const TextTheme().copyWith(
          titleSmall: const TextStyle(
            fontSize: 13,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Layout Exercise'),
          backgroundColor: Colors.blue[400],
        ),
        body: Card(
          elevation: 1.5,
          margin: const EdgeInsets.all(6.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Header(),
                SizedBox(height: 8.0),
                Information(),
                SizedBox(height: 16.0),
                IconList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
