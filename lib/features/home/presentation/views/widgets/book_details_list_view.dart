import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

import 'Book_Image_Item.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 0.h),
            child: const BookImageItem(),
          );
        },
      ),
    );
  }
}
