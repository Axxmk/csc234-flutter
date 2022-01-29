import 'package:flutter/material.dart';

class IconList extends StatelessWidget {
  const IconList({Key? key}) : super(key: key);

  Widget _buildIcon(IconData icon) {
    return Icon(
      icon,
      color: Colors.blue[300],
      size: 28,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _buildIcon(Icons.accessibility),
        _buildIcon(Icons.timer),
        _buildIcon(Icons.phone_android),
        _buildIcon(Icons.phone_iphone),
      ],
    );
  }
}
