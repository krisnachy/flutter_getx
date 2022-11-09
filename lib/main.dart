import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/detail.dart';
import 'package:flutter_getx/pages/home.dart';
import 'package:flutter_getx/pages/product.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const HomePage(),
      getPages: [
        GetPage(name: '/', page: () => const HomePage()),
        GetPage(name: '/product', page: () => const ProductPage()),
        GetPage(name: '/product/:id?', page: () => const DetailPage()),
      ],
    );
  }
}
