// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Text(
            'Free',
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          const Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0xffFFDD4F),
            size: 14,
          ),
          const SizedBox(
            width: 6.3,
          ),
          Text(
            '4.8',
            style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
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
