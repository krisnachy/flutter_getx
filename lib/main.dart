import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  var count = 0.obs;
  void add() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Obx(() => Text(
                'Angka $count',
                style: const TextStyle(fontSize: 35),
              )),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () => add()),
      ),
    );
  }
}
