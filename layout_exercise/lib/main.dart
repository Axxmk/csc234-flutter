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
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(4),
            ),
            width: 250,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Header(),
                SizedBox(height: 16.0),
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
