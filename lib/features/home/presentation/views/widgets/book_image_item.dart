import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

class BookImageItem extends StatelessWidget {
  const BookImageItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 260.h,
        child: AspectRatio(
          aspectRatio: 2.1 / 3,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(12)),
          ),
        ));
  }
}
