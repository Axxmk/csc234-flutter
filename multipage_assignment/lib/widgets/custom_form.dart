import 'package:flutter/material.dart';

// widgets
import './custom_textformfield.dart';

class CustomForm extends StatelessWidget {
  final GlobalKey<FormState> keyForm;
  final TextEditingController controllerHandler;
  final String title;
  final Function routeHandler;

  const CustomForm({
    Key? key,
    required this.keyForm,
    required this.controllerHandler,
    required this.title,
    required this.routeHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            children: [
              Form(
                key: keyForm,
                child: CustomTextFormField(
                  controllerHandler: controllerHandler,
                  title: title,
                ),
              ),
              const SizedBox(height: 14),
              OutlinedButton(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text('show'),
                    Icon(
                      Icons.arrow_forward,
                      size: 18,
                    ),
                  ],
                ),
                onPressed: () {
                  var check = keyForm.currentState?.validate();
                  if (check == null || !check) return;
                  routeHandler();
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
