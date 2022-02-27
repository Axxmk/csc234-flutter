import 'package:flutter/material.dart';

class IconSection extends StatelessWidget {
  IconSection({Key? key}) : super(key: key);

  TextStyle styleText = const TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    letterSpacing: 0.5,
    fontSize: 13,
    height: 2,
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      style: styleText,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: const [
                Icon(
                  Icons.timer,
                  color: Colors.deepPurple,
                  size: 20,
                ),
                Text('Time:'),
                Text('250 ms'),
              ],
            ),
            Column(
              children: const [
                Icon(
                  Icons.search,
                  color: Colors.deepPurple,
                  size: 20,
                ),
                Text('ITEMS:'),
                Text('10K'),
              ],
            ),
            Column(
              children: const [
                Icon(
                  Icons.wifi,
                  color: Colors.deepPurple,
                  size: 20,
                ),
                Text('MEANING:'),
                Text('2+'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
