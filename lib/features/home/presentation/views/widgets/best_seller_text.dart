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
      padding: EdgeInsets.only(left: 8.h, right: 8.h, top: 50.h, bottom: 20.h),
      child: const Text(
        'Best Seller',
        style: Styles.titleMedium,
      ),
    );
  }
}
