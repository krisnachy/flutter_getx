import 'package:flutter/material.dart';
import 'package:flutter_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final counterCont = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => MaterialApp(
        theme: counterCont.isDark.value ? ThemeData.dark() : ThemeData.light(),
        home: HomePage()));
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final count = Get.find<CounterController>();

    return Scaffold(
      appBar: AppBar(),
      body: Obx(() => Center(
            child: Text(
              "Angka ${count.counter}",
              style: const TextStyle(fontSize: 35),
            ),
          )),
      floatingActionButton: FloatingActionButton(onPressed: () {
        count.increment();
        count.changeTheme();
      }),
    );
  }
}
