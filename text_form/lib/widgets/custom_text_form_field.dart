import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controllerHandler;
  final RegExp regex;
  final String placeholder;
  final IconData icon;
  final bool autoFocus;

  const CustomTextFormField({
    Key? key,
    required this.controllerHandler,
    required this.regex,
    required this.placeholder,
    required this.icon,
    this.autoFocus = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controllerHandler,
      autofocus: autoFocus,
      validator: (text) {
        if (text == null || text.isEmpty) {
          return 'Please fill out $placeholder';
        } else if (!regex.hasMatch(text)) {
          return 'Please type $placeholder again';
        }
        return null;
      },
      obscureText: placeholder == "Password" ? true : false,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        hintText: placeholder,
        prefixIcon: Icon(icon),
      ),
    );
  }
}
