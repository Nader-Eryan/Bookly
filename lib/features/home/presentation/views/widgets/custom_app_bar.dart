import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:size_config/size_config.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 12.w, right: 12.w, top: 70.h, bottom: 40.h),
      child: Row(
        children: [
          SvgPicture.asset(AsssetsData.logo),
          const Spacer(),
          Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 32.h,
          ),
          SizedBox(
            width: 4.w,
          )
        ],
      ),
    );
  }
}
