import 'package:flutter/material.dart';

// widgets
import './widgets/custom_text_form_field.dart';
import './widgets/button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'textFormExercise',
      home: const MyHomePage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.deepPurple[300],
          secondary: Colors.orange[200],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  RegExp emailRegex = RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$",
    caseSensitive: false,
  );
  RegExp passwordRegex = RegExp(r"(?=.*\d)(?=.*[A-Z])");

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final inputWidth = (mediaQuery.size.width - 20) * 0.49;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Form Exercise'),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: inputWidth,
                    child: CustomTextFormField(
                      controllerHandler: emailController,
                      regex: emailRegex,
                      placeholder: "Email",
                      icon: Icons.email,
                    ),
                  ),
                  SizedBox(
                    width: inputWidth,
                    child: CustomTextFormField(
                      controllerHandler: passwordController,
                      regex: passwordRegex,
                      placeholder: "Password",
                      icon: Icons.lock,
                      autoFocus: true,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 8),
                alignment: Alignment.centerRight,
                child: Button(
                  formKey: _formKey,
                  emailController: emailController,
                  passwordController: passwordController,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
