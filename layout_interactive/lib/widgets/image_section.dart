import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 8,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.asset(
          'images/profile.jpg',
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
