import 'package:e_book/features/home/presentation/views/widgets/book_image_item.dart';
import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 14.h),
            child: const BookImageItem(),
          );
        },
      ),
    );
  }
}
