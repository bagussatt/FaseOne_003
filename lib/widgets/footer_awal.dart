import 'package:flutter/material.dart';

class FooterAwal extends StatelessWidget {
   FooterAwal({super.key, required this.onPressedMakanan,});

  final VoidCallback onPressedMakanan;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: onPressedMakanan,
          child: Text('Submit'),
        ),
      ],
    );
  }
}
