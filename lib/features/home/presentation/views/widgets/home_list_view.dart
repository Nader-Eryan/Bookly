import 'package:e_book/core/widgets/custom_error_widget.dart';
import 'package:e_book/features/home/presentation/manager/newest_books_cubit/newest_book_cubit.dart';
import 'package:e_book/features/home/presentation/views/widgets/newest_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import 'package:size_config/size_config.dart';

import '../../../../../core/utils/app_router.dart';

class NewestBookListView extends StatelessWidget {
  const NewestBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if (state is NewestBookSuccess) {
          return ListView.builder(
            itemCount: 10,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: GestureDetector(
                  child: NewestListViewItem(bookModel: state.books[index]),
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.kBookDetailsView,
                        extra: state.books[index]);
                  },
                ),
              );
            },
          );
        } else if (state is NewestBookFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            enabled: true,
            child: ListView.builder(
              itemCount: 10,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  child: Container(
                    height: 140.h,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(16)),
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
