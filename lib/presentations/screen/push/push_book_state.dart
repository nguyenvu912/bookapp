part of 'push_book_cubit.dart';

class PushBookState extends Equatable {
  String? bookName;
  String? description;
  Map<dynamic, String>? images;
  String? author;
  LoadStatus? loadStatus;

  PushBookState({
    this.bookName,
    this.author,
    this.description,
    this.images,
    this.loadStatus,
  });

  @override
  List<Object?> get props =>
      [loadStatus, bookName, author, images, description];

  PushBookState copyWith({
    String? bookName,
    String? description,
    Map<dynamic, String>? images,
    String? author,
    LoadStatus? loadStatus,
  }) {
    return PushBookState(
      bookName: bookName ?? this.bookName,
      author: author ?? this.author,
      description: description ?? this.description,
      images: images ?? this.images,
      loadStatus: loadStatus ?? this.loadStatus,
    );
  }
}
