import 'package:e_book/features/home/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Ebook());
}

class Ebook extends StatelessWidget {
  const Ebook({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashView(),
    );
  }
}
