import 'package:flutter/material.dart';

class ClickableIcon extends StatefulWidget {
  const ClickableIcon({Key? key}) : super(key: key);

  @override
  _ClickableIconState createState() => _ClickableIconState();
}

class _ClickableIconState extends State<ClickableIcon> {
  int _count = 0;

  void _handleClick() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: _count % 2 == 0 ? const Icon(Icons.person) : const Icon(Icons.person_outline),
          onPressed: _handleClick,
          color: Theme.of(context).colorScheme.secondary,
          splashRadius: 20,
          iconSize: 28.0,
        ),
        Text(
          '$_count',
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ],
    );
  }
}
