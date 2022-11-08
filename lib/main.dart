import 'package:flutter/material.dart';
import 'package:flutter_getx/pages/detail.dart';
import 'package:flutter_getx/pages/home.dart';
import 'package:flutter_getx/pages/product.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/product', page: () => ProductPage()),
        GetPage(name: '/product/:id/:name', page: () => DetailPage()),
      ],
    );
  }
}
