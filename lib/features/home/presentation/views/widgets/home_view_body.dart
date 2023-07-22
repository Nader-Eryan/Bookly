import 'package:flutter/material.dart';

import 'best_seller_list_item.dart';
import 'best_seller_text.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomAppBar(),
            FeaturedListView(),
            BestSellerText(),
            BestSellerListViewItem(),
          ],
        ),
      ),
    );
  }
}
