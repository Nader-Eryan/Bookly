import 'package:e_book/features/home/data/models/book_model/book_model.dart';
import 'package:e_book/features/home/presentation/views/widgets/book_details_list_view.dart';
import 'package:e_book/features/home/presentation/views/widgets/book_image_details_section.dart';
import 'package:e_book/features/home/presentation/views/widgets/two_buttons_price_preview.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const BookImageDetailsSection(),
              const Expanded(
                child: SizedBox(
                  height: 25,
                ),
              ),
              const TwoButtonsPricePreview(),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 30, bottom: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.w700, fontFamily: kSanFransisco),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: BookDetailsListView(
                  bookModel: bookModel,
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
