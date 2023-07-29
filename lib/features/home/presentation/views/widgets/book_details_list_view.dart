import 'package:e_book/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

import 'Book_Image_Item.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 0.h),
            child: BookImageItem(
              image: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
            ),
          );
        },
      ),
    );
  }
}
