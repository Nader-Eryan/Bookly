import 'package:dio/dio.dart';
import 'package:e_book/core/utils/api_service.dart';
import 'package:e_book/features/home/data/models/book_model/book_model.dart';
import 'package:e_book/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:e_book/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this.apiService);
  final ApiService apiService;
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?q=self-improvements+algorithims+bussiness+novel+life+motivation+education&filter=free-ebooks');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
