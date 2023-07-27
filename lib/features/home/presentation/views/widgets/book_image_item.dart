import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_book/core/widgets/custom_error_widget.dart';
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
          child: CachedNetworkImage(
            errorWidget: (context, url, error) =>
                const CustomErrorWidget(errMessage: 'Image not found!'),
            fit: BoxFit.fill,
            imageUrl: image,
          ),
        ));
  }
}
