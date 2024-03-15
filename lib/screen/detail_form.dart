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
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              HeaderWidget(),
              Text(
                'Nama :$nama',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 10),
              Text(
                'No Telp : $noTlp',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 10),
              Text(
                'Nama :$makanan',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 10),
              Text(
                'No Telp : $minuman',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 10),
              Text(
                'No Telp : $dessert',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 10),
              FooterEnd(onPressedEnd: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => DataForm()),
                    (route) => false);
              })
            ],
          ),
        ),
      )),
    );
  }
}
