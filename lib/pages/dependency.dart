import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DependencyPage extends StatelessWidget {
  DependencyPage({Key? key}) : super(key: key);

  final myCon = Get.put(MyController(), permanent: true);
  //Permanent untuk menyimpan data yang ada seperti textfield atau fungsi yang menggunakan perhitungan

  /*
  Jika put diletakkan di main, maka tinggal menggunakan
  final MyController myC = Get.find();
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dependency'),
      ),
      body: Center(
          child: Obx(() => Text(
                '${myCon.count}',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ))),
      floatingActionButton: FloatingActionButton(onPressed: () {
        myCon.add();
      }),
    );
  }
}

class MyController extends GetxController {
  var count = 0.obs;

  void add() => count++;
}
