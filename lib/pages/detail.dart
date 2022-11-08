import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Product'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () => Get.toNamed('/product'),
                child: const Text('Product 1')),
            ElevatedButton(
                onPressed: () => Get.toNamed('/product'),
                child: const Text('Product 2')),
            ElevatedButton(
                onPressed: () => Get.toNamed('/product'),
                child: const Text('Product 3')),
          ],
        ),
      ),
    );
  }
}
