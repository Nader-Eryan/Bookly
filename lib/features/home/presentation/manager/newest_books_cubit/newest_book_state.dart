// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'newest_book_cubit.dart';

abstract class NewestBookState extends Equatable {
  const NewestBookState();

  @override
  List<Object> get props => [];
}

class NewestBookInitial extends NewestBookState {}

class NewestBookLoading extends NewestBookState {}

class NewestBookFailure extends NewestBookState {
  final String errMessage;
  const NewestBookFailure({
    required this.errMessage,
  });
}

class NewestBookSuccess extends NewestBookState {
  final List<BookModel> books;
  const NewestBookSuccess({
    required this.books,
  });
}
