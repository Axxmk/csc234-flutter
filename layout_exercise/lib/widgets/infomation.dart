import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          '123 Main Street',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          '415-555-0198',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
