import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookDetailsRatingRow extends StatelessWidget {
  const BookDetailsRatingRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
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
    );
  }
}
