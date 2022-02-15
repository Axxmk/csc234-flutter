import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String text;

  const TextSection({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 6,
        left: 32,
        right: 32,
        bottom: 32,
      ),
      child: Text(
        text,
        softWrap: true,
      ),
    );
  }
}
