import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featured_list_view.dart';
import 'featured_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            CustomAppBar(),
            FeaturedListView(),
          ],
        ),
      ),
    );
  }
}
