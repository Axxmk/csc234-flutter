import 'package:flutter/material.dart';

class IconList extends StatelessWidget {
  const IconList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Icon(
          Icons.accessibility,
          color: Colors.blue[300],
          size: 30,
        ),
        Icon(
          Icons.timer,
          color: Colors.blue[300],
          size: 30,
        ),
        Icon(
          Icons.phone_android,
          color: Colors.blue[300],
          size: 30,
        ),
        Icon(
          Icons.phone_iphone,
          color: Colors.blue[300],
          size: 30,
        ),
      ],
    );
  }
}
