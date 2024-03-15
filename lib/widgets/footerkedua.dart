import 'package:flutter/material.dart';

class FooterKedua extends StatelessWidget {
   FooterKedua({super.key, required this.onPressedDetail,});

  final VoidCallback onPressedDetail;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: onPressedDetail,
          child: Text('Submit'),
        ),
      ],
    );
  }
}
