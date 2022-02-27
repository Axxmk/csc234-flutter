import 'package:flutter/material.dart';

void main() => runApp(const HeroApp());

class HeroApp extends StatelessWidget {
  const HeroApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transition two screens',
      initialRoute: '/',
      routes: {
        '/': (context) => const MainScreen(),
        SecondScreen.routeName: (context) => const SecondScreen(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: GestureDetector(
        onTap: (() async {
          final result = await Navigator.pushNamed(
            context,
            SecondScreen.routeName,
            arguments: const SecondScreenArguments(
              title: 'Lovely dog',
              description: 'My favorite animal is dog, and this dog is very cute!',
            ),
          );

          ScaffoldMessenger.of(context)
            ..removeCurrentSnackBar()
            ..showSnackBar(SnackBar(content: Text('$result')));

          // Navigator.push(context, MaterialPageRoute(builder: (context) {
          //   return const SecondScreen();
          // }));
        }),
        child: Hero(
          tag: 'image-hero',
          child: Image.network(
            'https://c.files.bbci.co.uk/151AB/production/_111434468_gettyimages-1143489763.jpg',
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  static const routeName = '/dog';

  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as SecondScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
            tag: 'image-hero',
            child: Center(
              child: Image.network(
                'https://dogtime.com/assets/uploads/gallery/nova-scotia-duck-tolling-retriever-dog-breed-pictures/1-face.jpg',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              args.description,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 8.0),
                child: const Text('Are you prefer dog or cat?'),
              ),
              Container(
                margin: const EdgeInsets.only(right: 8.0),
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context, 'Prefer Dog!');
                  },
                  child: const Text('Dog'),
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.pop(context, 'Prefer Cat!');
                },
                child: const Text('Cat'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SecondScreenArguments extends StatelessWidget {
  final String title;
  final String description;

  const SecondScreenArguments({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
