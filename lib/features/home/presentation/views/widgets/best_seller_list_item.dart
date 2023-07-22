import 'package:e_book/constants.dart';
import 'package:e_book/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

import '../../../../../core/utils/assets.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
              height: 130.h,
              child: AspectRatio(
                aspectRatio: 2 / 3,
                child: Container(
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(AsssetsData.testImage),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(4)),
                ),
              )),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SizedBox(
                  width: 200.w,
                  child: Text(
                    'Harry Potter and the Goblet of Fire',
                    style:
                        Styles.textStyle20.copyWith(fontFamily: kGTSectraFine),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
