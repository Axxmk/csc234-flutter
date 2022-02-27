import 'package:flutter/material.dart';
import './widgets/content_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Solution',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final img1 = 'images/Capture.png';
  final img2 = 'images/Capturescr.png';
  var count = 1;

  void _changeImg() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('What is the solution?'),
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  child: ContentSection(),
                ),
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: _changeImg,
                    child: Image.asset(
                      count % 2 == 0 ? img2 : img1,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
