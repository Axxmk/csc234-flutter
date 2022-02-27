import 'package:flutter/material.dart';
import 'icon_section.dart';

class ContentSection extends StatelessWidget {
  const ContentSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 14,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildHeartList(),
                  // const SizedBox(
                  //   width: 24,
                  // ),
                  const Text(
                    '10K results',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Solution means',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const Text(
              '1. a means of solving a problem or\n' +
                  'dealing with a difficult situation.\n' +
                  '2. a liquid mixture in which the\n' +
                  'minor component (the solute) is\n' +
                  'uniformly distributed within the\n' +
                  'major component (the solvent).',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            IconSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeartList() {
    return Row(
      children: [
        _buildfavIcon(true),
        _buildfavIcon(true),
        _buildfavIcon(true),
        _buildfavIcon(false),
        _buildfavIcon(false),
      ],
    );
  }

  Widget _buildfavIcon(bool filled) {
    return Icon(
      filled ? Icons.favorite : Icons.favorite_outline,
      color: Colors.blue,
      size: 16,
    );
  }
}
