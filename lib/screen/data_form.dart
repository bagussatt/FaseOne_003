import 'package:flutter/material.dart';
import 'package:ucppamlanjutfirst/screen/data_makanan.dart';
import 'package:ucppamlanjutfirst/widgets/halaman1/footer_awal.dart';
import 'package:ucppamlanjutfirst/widgets/halaman1/form_awal.dart';
import 'package:ucppamlanjutfirst/widgets/halaman2/form_jeniskl.dart';
import 'package:ucppamlanjutfirst/widgets/header_widget.dart';

class DataForm extends StatelessWidget {
  const DataForm({super.key});

  @override
  Widget build(BuildContext context) {
    var nama = TextEditingController();
    var noTlp = TextEditingController();
    var alamat = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              HeaderWidget(),
              FormAwal(
                formKey: formKey,
                Fnama: nama,
                Fnomor: noTlp,
                Falamat: alamat,
              ),
              FormJeniskl(),
              FooterAwal(onPressedMakanan: () {
                if (formKey.currentState!.validate()) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DataMakanan(
                          nama: nama.text,
                          noTlp: noTlp.text,
                        ),
                      ),
                      (route) => false);
                }
              })
            ],
          ),
        ),
      )),
    );
  }
}
