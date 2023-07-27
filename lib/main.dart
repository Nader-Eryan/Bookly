import 'package:e_book/constants.dart';
import 'package:e_book/core/utils/app_router.dart';
import 'package:e_book/core/utils/service_locator.dart';
import 'package:e_book/features/home/data/repos/home_repo_implementation.dart';
import 'package:e_book/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:e_book/features/home/presentation/manager/newest_books_cubit/newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:size_config/size_config.dart';

void main() {
  setupServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Ebook());
}

class Ebook extends StatelessWidget {
  const Ebook({super.key});

  @override
  Widget build(BuildContext context) {
    return SizeConfigInit(
        builder: (context, orientation) => MultiBlocProvider(
              providers: [
                BlocProvider(
                    create: (context) =>
                        FeaturedBooksCubit(getIt.get<HomeRepoImpl>())),
                BlocProvider(
                    create: (context) =>
                        NewestBookCubit(getIt.get<HomeRepoImpl>())),
              ],
              child: MaterialApp.router(
                routerConfig: AppRouter.router,
                debugShowCheckedModeBanner: false,
                theme: ThemeData.dark().copyWith(
                  scaffoldBackgroundColor: kPrimaryColor,
                  textTheme: GoogleFonts.montserratAlternatesTextTheme(
                      ThemeData.dark().textTheme),
                ),
              ),
            ),
        referenceHeight: 900,
        referenceWidth: 360);
  }
}
