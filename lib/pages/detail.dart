import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product ID ${Get.parameters['id']}'),
      ),
      body: Center(child: Text('Product Detail ${Get.parameters['name']}')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('HALO', 'Anda berhasil menampilkan snackbar');
        },
      ),
    );
  }
}
