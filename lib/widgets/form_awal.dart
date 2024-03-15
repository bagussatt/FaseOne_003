import 'package:flutter/material.dart';

class FormAwal extends StatefulWidget {
  const FormAwal({super.key, required this.formKey, required this.Fnama, required this.Fnomor, required this.Falamat});

  final GlobalKey<FormState> formKey;
  final TextEditingController Fnama;
  final TextEditingController Fnomor;
  final TextEditingController Falamat;

  @override
  State<FormAwal> createState() => _FormAwalState();
}

class _FormAwalState extends State<FormAwal> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
        child: Column(
      children: [
        TextFormField(
          controller: widget.Fnama,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            labelText: 'Nama',
            hintText: 'Masukkan nama Anda',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.person),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Silahkan Isi Nama Anda';
            }
            return null;
          },
        ),
        SizedBox(
          height: 25,
        ),
        TextFormField(
          controller: widget.Fnomor,
          keyboardType: TextInputType.number,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            labelText: 'No Telepon Anda',
            hintText: 'Masukkan Nomor Anda',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.person),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Silahkan Isi Nomor Telepon Anda';
            }
            return null;
          },
        ),
        SizedBox(
          height: 25,
        ),
        TextFormField(
          controller: widget.Falamat,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            labelText: 'Alamat',
            hintText: 'Masukkan Alamat Anda',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.person),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Silahkan Isi Alamat Anda';
            }
            return null;
          },
        ),
        SizedBox(
          height: 25,
        ),
      ],
    ));
  }
}
