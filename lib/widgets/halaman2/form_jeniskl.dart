import 'package:flutter/material.dart';

enum jenisKL { L, P }

class FormJeniskl extends StatefulWidget {
  const FormJeniskl({super.key});

  @override
  State<FormJeniskl> createState() => _FormJenisklState();
}

class _FormJenisklState extends State<FormJeniskl> {
  jenisKL? _jk = jenisKL.L;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Laki laki'),
          leading: Radio<jenisKL>(
            value: jenisKL.L,
            groupValue: _jk,
            onChanged: (jenisKL? value) {
              setState(() {
                _jk = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Perempuan'),
          leading: Radio<jenisKL>(
            value: jenisKL.P,
            groupValue: _jk,
            onChanged: (jenisKL? value) {
              setState(() {
                _jk = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
