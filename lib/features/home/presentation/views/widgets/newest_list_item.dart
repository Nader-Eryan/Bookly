import 'package:e_book/core/utils/styles.dart';
import 'package:e_book/features/home/data/models/book_model/book_model.dart';
import 'package:e_book/features/home/presentation/views/widgets/newest_item_rating_row.dart';
import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

class NewestListViewItem extends StatelessWidget {
  const NewestListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          SizedBox(
              height: 140.h,
              child: AspectRatio(
                aspectRatio: 2 / 3,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            bookModel.volumeInfo.imageLinks.thumbnail),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(4)),
                ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 210.w,
                  child: Text(
                    bookModel.volumeInfo.title!,
                    style: Styles.textStyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  bookModel.volumeInfo.authors == null
                      ? 'No Title available'
                      : bookModel.volumeInfo.authors![0],
                  style: Styles.textStyle14.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 3,
                ),
                SizedBox(width: 210.w, child: RatingRow()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
