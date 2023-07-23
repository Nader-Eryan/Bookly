import 'package:e_book/constants.dart';
import 'package:e_book/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:size_config/size_config.dart';

void main() {
  runApp(const Ebook());
}

class Ebook extends StatelessWidget {
  const Ebook({super.key});

  @override
  Widget build(BuildContext context) {
    return SizeConfigInit(
        builder: (context, orientation) => MaterialApp.router(
              routerConfig: AppRuter.router,
              debugShowCheckedModeBanner: false,
              theme: ThemeData.dark().copyWith(
                scaffoldBackgroundColor: kPrimaryColor,
                textTheme: GoogleFonts.montserratAlternatesTextTheme(
                    ThemeData.dark().textTheme),
              ),
            ),
        referenceHeight: 900,
        referenceWidth: 360);
  }
}
