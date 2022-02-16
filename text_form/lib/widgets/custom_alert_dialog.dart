import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const CustomAlertDialog({
    Key? key,
    required this.emailController,
    required this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Your Form\'s Input',
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
        ),
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
              Text(
                ' email: ',
                style: Theme.of(context).textTheme.titleMedium,
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
              Text(
                ' password: ',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(passwordController.text),
            ],
          ),
        ],
      ),
      actions: [
        TextButton(
            onPressed: () {},
            child: TextButton(
              child: const Text('CLOSE'),
              onPressed: () => Navigator.pop(context),
            ))
      ],
    );
  }
}
