import 'package:flutter/material.dart';

class FooterKedua extends StatelessWidget {
   const FooterKedua({super.key, required this.onPressedDetail,});

  final VoidCallback onPressedDetail;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: onPressedDetail,
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
