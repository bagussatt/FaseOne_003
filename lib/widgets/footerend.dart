import 'package:flutter/material.dart';

class FooterEnd extends StatelessWidget {
  FooterEnd({
    super.key,
    required this.onPressedEnd,
  });

  final VoidCallback onPressedEnd;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: onPressedEnd,
          child: Text('Selesai'),
        ),
      ],
    );
  }
}
