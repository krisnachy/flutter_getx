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
                onPressed: () => Get.toNamed('/product/1?name=Jaket&ukuran=XL'),
                child: const Text('Product 1')),
            ElevatedButton(
                onPressed: () =>
                    Get.toNamed('/product/2?name=Kaos Kaki&ukuran=Sedang'),
                child: const Text('Product 2')),
            ElevatedButton(
                onPressed: () =>
                    Get.toNamed('/product/3?name=Sepatu Lari&ukuran=47'),
                child: const Text('Product 3')),
            ElevatedButton(
                onPressed: () => Get.toNamed('/depend'),
                child: const Text('Dependency')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO choose one
          Get.defaultDialog();
          Get.bottomSheet(
              //TODO diisi dengan banyak widget seperti biasa
              Container());
        },
      ),
    );
  }
}
