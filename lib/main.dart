import 'package:e_book/constants.dart';
import 'package:e_book/features/home/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:size_config/size_config.dart';

void main() {
  runApp(const Ebook());
}

class Ebook extends StatelessWidget {
  const Ebook({super.key});

  @override
  Widget build(BuildContext context) {
    return SizeConfigInit(
        builder: (context, orientation) => GetMaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData.dark().copyWith(
                scaffoldBackgroundColor: kPrimaryColor,
              ),
              home: SplashView(),
            ),
        referenceHeight: 900,
        referenceWidth: 360);
  }
}
