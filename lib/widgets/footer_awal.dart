import 'package:flutter/material.dart';

class FooterAwal extends StatelessWidget {
   const FooterAwal({super.key, required this.onPressedMakanan,});

  final VoidCallback onPressedMakanan;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: onPressedMakanan,
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
