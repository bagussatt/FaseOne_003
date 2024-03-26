import 'package:flutter/material.dart';

class FormMakanan extends StatefulWidget {
  const FormMakanan(
      {super.key,
      required this.formKey,
      required this.FMakan,
      required this.Fminum,
      required this.FDessert});

  final GlobalKey<FormState> formKey;
  final TextEditingController FMakan;
  final TextEditingController Fminum;
  final TextEditingController FDessert;

  @override
  State<FormMakanan> createState() => _FormMakananState();
}

class _FormMakananState extends State<FormMakanan> {
  @override
  Widget build(BuildContext context) {
    return Form(
        key: widget.formKey,
        child: Column(
          children: [
            TextFormField(
              controller: widget.FMakan,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                labelText: 'Makanan',
                hintText: 'Masukkan Makanan Anda',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            TextFormField(
              controller: widget.Fminum,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                labelText: 'Minuman',
                hintText: 'Masukkan Minuman Anda',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            TextFormField(
              controller: widget.FDessert,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: const InputDecoration(
                labelText: 'Dessert',
                hintText: 'Masukkan Dessert Anda',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ));
  }
}
