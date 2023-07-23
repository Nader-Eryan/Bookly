import 'package:e_book/features/home/presentation/views/widgets/Book_Image_Item.dart';
import 'package:e_book/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

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
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
            child: const BookImageItem(),
          ),
        ],
      ),
    );
  }
}
