import 'package:flutter/material.dart';

class FormDetail extends StatefulWidget {
  const FormDetail({super.key, required this.formKey, required this.nama, required this.alamat, required this.noTelepon});

  final GlobalKey<FormState> formKey;
  final TextEditingController nama;
  final TextEditingController alamat;
  final TextEditingController noTelepon;

  @override
  State<FormDetail> createState() => _FormDetailState();
}

class _FormDetailState extends State<FormDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Form(
            key: widget.formKey,
              child: Column(
            children: [
              TextFormField(
                controller: widget.nama,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Masukan Data yang diinginkan"),
              ),
              SizedBox(height: 35,),
              TextFormField(
                controller: widget.alamat,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Masukan Data yang diinginkan"),
              ),
              SizedBox(height: 35,),
              TextFormField(
                controller: widget.noTelepon,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Masukan Data yang diinginkan"),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
