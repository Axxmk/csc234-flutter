import 'package:flutter/material.dart';
import 'package:layout_interactive/widgets/button_section.dart';
import 'package:layout_interactive/widgets/text_section.dart';

// widgets
import './widgets/title_section.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Interactive',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.deepOrange[300],
          secondary: const Color.fromARGB(255, 100, 160, 145),
        ),
        splashColor: const Color.fromARGB(255, 139, 219, 199),
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(190, 0, 0, 0),
              ),
              titleMedium: const TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
            ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Layout Interactive'),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              'images/profile.jpg',
              height: 300,
              fit: BoxFit.cover,
            ),
            const TitleSection(
              fullName: 'Monthara Kiatruangchai',
              affiliation: 'Computer Science, KMUTT',
            ),
            const ButtonSection(phoneNumber: '001-646-7659'),
            const TextSection(
              text: 'Hello, my name is Monthara Kiatruangchai or you can call me Ann. '
                  'Currently, I\'m studying at KMUTT in Bachelor of Computer Science, 2nd year student. '
                  'My favourite programming languages are javascipt and python. '
                  'My goal now is learning flutter, IoT, and ux/ui design.',
            ),
          ],
        ),
      ),
    );
  }
}
