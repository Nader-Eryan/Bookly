import 'package:e_book/constants.dart';
import 'package:e_book/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:size_config/size_config.dart';

import '../../../../../core/utils/assets.dart';
import 'best_seller_list_item.dart';
import 'best_seller_text.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight: 50.h,
          elevation: 0,
          backgroundColor: kPrimaryColor,
          automaticallyImplyLeading: false,
          // flexibleSpace: CustomAppBar(),
          actions: <Widget>[
            SizedBox(
              width: 28.w,
            ),
            SvgPicture.asset(
              AsssetsData.logo,
            ),
            const Spacer(),
            Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 28.h,
            ),
            SizedBox(
              width: 4.w,
            ),
            SizedBox(
              width: 28.w,
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                FeaturedListView(),
                BestSellerText(),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const BestSellerListView()),
        )
      ]),
    );
  }
}
