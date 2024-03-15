import 'package:flutter/material.dart';

class FooterEnd extends StatelessWidget {
  const FooterEnd({
    super.key,
    required this.onPressedEnd,
  });

  final VoidCallback onPressedEnd;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: onPressedEnd,
          child: const Text('Selesai'),
        ),
      ],
    );
  }
}
