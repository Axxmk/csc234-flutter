import 'package:flutter/material.dart';
import 'package:multipage_assignment/models/detail_argument.dart';

// pages
import './pages/first_detail_screen.dart';
import './pages/second_detail_screen.dart';

// widgets
import './widgets/custom_form.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "multi-page assignment",
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomepage(),
        FirstDetailScreen.routeName: (context) => const FirstDetailScreen(),
        SecondDetailScreen.routeName: (context) => const SecondDetailScreen(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 96, 162, 196),
          secondary: const Color.fromARGB(255, 201, 162, 91),
        ),
      ),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  final _formKey1 = GlobalKey<FormState>();
  final _formKey2 = GlobalKey<FormState>();
  final text1 = TextEditingController();
  final text2 = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    text1.dispose();
    text2.dispose();
  }

  void _navigateToDetail1() {
    Navigator.pushNamed(
      context,
      FirstDetailScreen.routeName,
      arguments: DetailArgument(text1.text),
    );
    text1.text = "";
  }

  void _navigateToDetail2() {
    Navigator.pushNamed(
      context,
      SecondDetailScreen.routeName,
      arguments: DetailArgument(text2.text),
    );
    text2.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Homepage'),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomForm(
                keyForm: _formKey1,
                controllerHandler: text1,
                title: 'Text 1',
                routeHandler: _navigateToDetail1,
              ),
              CustomForm(
                keyForm: _formKey2,
                controllerHandler: text2,
                title: 'Text 2',
                routeHandler: _navigateToDetail2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
