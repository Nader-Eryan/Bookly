import 'package:e_book/features/home/presentation/views/widgets/Book_Image_Item.dart';
import 'package:e_book/features/home/presentation/views/widgets/book_details_list_view.dart';
import 'package:e_book/features/home/presentation/views/widgets/book_details_rating_row.dart';
import 'package:e_book/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:e_book/features/home/presentation/views/widgets/two_buttons_price_preview.dart';
import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

import '../../../../../core/utils/styles.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
          const SizedBox(
            height: 25,
          ),
          const TwoButtonsPricePreview(),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 30, bottom: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24),
            child: BookDetailsListView(),
          ),
        ],
      ),
    );
  }
}
