import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

import '../../../../../core/utils/assets.dart';

class BookImageItem extends StatelessWidget {
  const BookImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300.h,
        child: AspectRatio(
          aspectRatio: 2.1 / 3,
          child: Container(
            decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(AsssetsData.testImage),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(16)),
          ),
        ));
  }
}
