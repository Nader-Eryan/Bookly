import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Text(
            '19.99 €',
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4F),
            size: 14,
          ),
          SizedBox(
            width: 6.3,
          ),
          Text(
            '4.8',
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            '(2390)',
            style: Styles.textStyle14.copyWith(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
