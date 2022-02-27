import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Retrieve Text Input',
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _formKey = GlobalKey<FormState>();
  final textController = TextEditingController();

  RegExp numberRegex = RegExp(r"\d");
  RegExp lengthRegex = RegExp(r"^(.{9,})$");

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retrieve Text Input'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: TextFormField(
            controller: textController,
            validator: (text) {
              if (text == null || text.isEmpty) {
                return 'Please enter some text';
              } else if (!numberRegex.hasMatch(text)) {
                return 'Please include number in the message';
              } else if (!lengthRegex.hasMatch(text)) {
                return 'Please enter more than 8 characters';
              } else {
                return null;
              }
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _formKey.currentState?.validate();
          showDialog(
            context: context,
            builder: (_) {
              return AlertDialog(
                content: Text(textController.text),
              );
            },
          );
        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}
