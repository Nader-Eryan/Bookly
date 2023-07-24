import 'package:e_book/features/home/presentation/views/widgets/best_seller_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:size_config/size_config.dart';

import '../../../../../core/utils/app_router.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({super.key});

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
              GoRouter.of(context).push(AppRouter.kBookDetailsView);
            },
          ),
        );
      },
    );
  }
}
