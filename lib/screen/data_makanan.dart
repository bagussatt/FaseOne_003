import 'package:flutter/material.dart';
import 'package:ucppamlanjutfirst/screen/detail_form.dart';
import 'package:ucppamlanjutfirst/widgets/halaman2/footerkedua.dart';
import 'package:ucppamlanjutfirst/widgets/halaman2/form_makanan.dart';
import 'package:ucppamlanjutfirst/widgets/header_widget.dart';

class DataMakanan extends StatelessWidget {
  const DataMakanan({super.key, required this.nama, required this.noTlp});

  final String nama;
  final String noTlp;

  @override
  Widget build(BuildContext context) {
    var makan = TextEditingController();
    var minum = TextEditingController();
    var dessert = TextEditingController();
    var formKey = GlobalKey<FormState>();
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
              FormMakanan(
                formKey: formKey,
                FMakan: makan,
                Fminum: minum,
                FDessert: dessert,
              ),
              FooterKedua(onPressedDetail: () {
                if (formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailForm(
                        nama: nama,
                        noTlp: noTlp,
                        makanan: makan.text,
                        minuman: minum.text,
                        dessert: dessert.text,
                      ),
                    ),
                  );
                }
              })
            ],
          ),
        ),
      )),
    );
  }
}
