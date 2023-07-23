import 'package:e_book/features/home/presentation/views/widgets/Book_Image_Item.dart';
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
        children: [
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: CustomBookDetailsAppBar()),
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 16.h),
            child: const BookImageItem(),
          ),
          SizedBox(
            height: 43,
          ),
          Text('The Jungle Book', style: Styles.textStyle30),
          SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Color(0xffFFDD4F),
              ),
              SizedBox(
                width: 6.3,
              ),
              Text(
                '4.8',
                style: Styles.textStyle16,
              ),
              SizedBox(
                width: 5,
              ),
              Text('(2390)'),
            ],
          )
        ],
      ),
    );
  }
}
