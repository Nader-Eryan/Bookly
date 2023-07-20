import 'package:e_book/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 45),
      child: Row(
        children: [
          SvgPicture.asset(AsssetsData.logo),
          const Spacer(),
          const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 22,
          ),
          const SizedBox(
            width: 4,
          )
        ],
      ),
    );
  }
}
