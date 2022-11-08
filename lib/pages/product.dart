import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

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
                onPressed: () => Get.toNamed('/product/1/Jaket'),
                child: const Text('Product 1')),
            ElevatedButton(
                onPressed: () => Get.toNamed('/product/2/Kaos'),
                child: const Text('Product 2')),
            ElevatedButton(
                onPressed: () => Get.toNamed('/product/3/Sepatu'),
                child: const Text('Product 3')),
          ],
        ),
      ),
    );
  }
}
