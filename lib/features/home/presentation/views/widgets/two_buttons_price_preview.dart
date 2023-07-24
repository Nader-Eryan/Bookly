import 'package:flutter/material.dart';

import 'book_details_custom_button.dart';

class TwoButtonsPricePreview extends StatelessWidget {
  const TwoButtonsPricePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          BookDetailsCustomButton(
            backGroundColor: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
            text: '19.99€',
            textColor: Colors.black,
          ),
          BookDetailsCustomButton(
            backGroundColor: Color(0xffEF8262),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12)),
            text: 'Free preview',
            textSize: 14,
            textColor: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
