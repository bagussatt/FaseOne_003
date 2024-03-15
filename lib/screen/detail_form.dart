import 'package:flutter/material.dart';
import 'package:ucppamlanjutfirst/screen/data_form.dart';
import 'package:ucppamlanjutfirst/widgets/footerend.dart';
import 'package:ucppamlanjutfirst/widgets/header_widget.dart';

class DetailForm extends StatelessWidget {
  const DetailForm(
      {super.key,
      required this.nama,
      required this.noTlp,
      required this.makanan,
      required this.minuman,
      required this.dessert});

  final String nama;
  final String noTlp;
  final String makanan;
  final String minuman;
  final String dessert;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const HeaderWidget(),
              Text(
                'Nama :$nama',
                style: const TextStyle(fontSize: 25),
              ),
              const SizedBox(height: 10),
              Text(
                'No Telp : $noTlp',
                style: const TextStyle(fontSize: 25),
              ),
              const SizedBox(height: 10),
              Text(
                'Nama :$makanan',
                style: const TextStyle(fontSize: 25),
              ),
              const SizedBox(height: 10),
              Text(
                'No Telp : $minuman',
                style: const TextStyle(fontSize: 25),
              ),
              const SizedBox(height: 10),
              Text(
                'No Telp : $dessert',
                style: const TextStyle(fontSize: 25),
              ),
              const SizedBox(height: 10),
              FooterEnd(onPressedEnd: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const DataForm()),
                    (route) => false);
              })
            ],
          ),
        ),
      )),
    );
  }
}
