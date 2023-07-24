import 'package:flutter/cupertino.dart';

import 'package:size_config/size_config.dart';

import '../../../../../core/utils/styles.dart';
import 'Book_Image_Item.dart';
import 'book_details_rating_row.dart';
import 'custom_book_details_app_bar.dart';

class BookImageDetailsSection extends StatelessWidget {
  const BookImageDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: CustomBookDetailsAppBar()),
        Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 16.h),
          child: const BookImageItem(),
        ),
        const SizedBox(
          height: 35,
        ),
        const Text('The Jungle Book', style: Styles.textStyle26),
        const SizedBox(
          height: 6,
        ),
        const Opacity(
          opacity: .8,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle16,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const BookDetailsRatingRow(),
      ],
    );
  }
}
