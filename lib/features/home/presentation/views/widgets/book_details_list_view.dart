import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:size_config/size_config.dart';

import '../../../../../core/utils/app_router.dart';
import 'best_seller_list_item.dart';

class BookDetailsListView extends StatelessWidget {
  const BookDetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          child: GestureDetector(
            child: const BestSellerListViewItem(),
            onTap: () {
              GoRouter.of(context).push('/${AppRouter.kBookDetailsView}');
            },
          ),
        );
      },
    );
  }
}
