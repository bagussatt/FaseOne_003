import 'package:flutter/material.dart';
import 'package:ucppamlanjutfirst/widgets/halaman4/form_detail.dart';

class Halaman4 extends StatelessWidget {
  const Halaman4({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var nama = TextEditingController();
    var alamat = TextEditingController();
    var noTelepon = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Halaman4(),
          SizedBox(
            height: 35,
          ),
          FormDetail(
              formKey: formKey,
              nama: nama,
              alamat: alamat,
              noTelepon: noTelepon)
        ],
      )),
    );
  }
}
