import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(
            Icons.account_circle,
            color: Colors.blue,
            size: 44,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Flutter McFlutter',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'Experienced App Developer',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ],
    );
  }
}
