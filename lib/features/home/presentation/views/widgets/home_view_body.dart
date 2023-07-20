import 'package:e_book/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';

import 'custom_app_bar.dart';
import 'featured_list_view.dart';
import 'featured_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            const FeaturedListView(),
            Padding(
              padding: EdgeInsets.only(
                  left: 8.h, right: 8.h, top: 50.h, bottom: 20.h),
              child: const Text(
                'Best Seller',
                style: Styles.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
