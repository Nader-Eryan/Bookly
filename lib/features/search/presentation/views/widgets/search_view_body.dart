import 'package:e_book/features/search/presentation/views/widgets/search_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              enabledBorder: outlineBorder(),
              focusedBorder: outlineBorder(),
              suffixIcon: const Opacity(
                opacity: .8,
                child: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Expanded(
            child: SearchListView(),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder outlineBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white));
}
