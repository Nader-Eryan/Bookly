import 'package:e_book/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:size_config/size_config.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [CustomAppBar()],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 70.h),
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
