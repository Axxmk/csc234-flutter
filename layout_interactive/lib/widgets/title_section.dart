import 'package:flutter/material.dart';

// widgets
import './title_clickable_icon.dart';

class TitleSection extends StatelessWidget {
  final String fullName;
  final String affiliation;

  const TitleSection({
    Key? key,
    required this.fullName,
    required this.affiliation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(30),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    fullName,
                    style: textTheme.titleLarge,
                  ),
                ),
                Text(
                  affiliation,
                  style: textTheme.titleMedium,
                ),
              ],
            ),
          ),
          const ClickableIcon()
        ],
      ),
    );
  }
}
