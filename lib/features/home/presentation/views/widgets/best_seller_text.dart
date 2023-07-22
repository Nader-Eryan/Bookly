import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

import '../../../../../core/utils/styles.dart';

class BestSellerText extends StatelessWidget {
  const BestSellerText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, right: 8.w, top: 50.h, bottom: 10.h),
      child: const Text(
        'Best Seller',
        style: Styles.textStyle18,
      ),
    );
  }
}
