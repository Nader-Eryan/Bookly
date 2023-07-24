import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookDetailsCustomButton extends StatelessWidget {
  const BookDetailsCustomButton(
      {super.key,
      required this.text,
      required this.borderRadius,
      required this.backGroundColor,
      required this.textColor,
      this.textSize,
      this.fontWeight});
  final String text;
  final BorderRadius borderRadius;
  final Color backGroundColor;
  final Color textColor;
  final double? textSize;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 38,
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backGroundColor,
              textStyle: TextStyle(color: textColor),
              shape: RoundedRectangleBorder(borderRadius: borderRadius)),
          onPressed: () {},
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
                fontSize: textSize, color: textColor, fontWeight: fontWeight),
          ),
        ),
      ),
    );
  }
}
