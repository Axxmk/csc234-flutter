import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const Button({
    Key? key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('Show'),
      onPressed: () {
        formKey.currentState?.validate();
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(
                'Your Form\'s Values',
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const Text(
                        ' email: ',
                      ),
                      Text(emailController.text),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.lock,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const Text(
                        ' password: ',
                      ),
                      Text(passwordController.text),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
