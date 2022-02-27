import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final TextEditingController controllerHandler;

  const CustomTextFormField({
    Key? key,
    required this.controllerHandler,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(
            Icons.text_fields_rounded,
            color: Theme.of(context).colorScheme.secondary,
            size: 32,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: TextFormField(
            controller: controllerHandler,
            validator: (text) {
              if (text == null || text.isEmpty) {
                return 'Please fill out $title';
              }
              return null;
            },
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              hintText: 'Enter $title',
            ),
          ),
        ),
      ],
    );
  }
}
