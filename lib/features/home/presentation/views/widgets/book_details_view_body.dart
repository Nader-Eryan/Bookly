import 'package:e_book/features/home/presentation/views/widgets/Book_Image_Item.dart';
import 'package:e_book/features/home/presentation/views/widgets/book_details_custom_button.dart';
import 'package:e_book/features/home/presentation/views/widgets/book_details_rating_row.dart';
import 'package:e_book/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                BookDetailsCustomButton(
                  backGroundColor: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12)),
                  text: '19.99€',
                  textColor: Colors.black,
                ),
                BookDetailsCustomButton(
                  backGroundColor: Color(0xffEF8262),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                  text: 'Free preview',
                  textSize: 14,
                  textColor: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
