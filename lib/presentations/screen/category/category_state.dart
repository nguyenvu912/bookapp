part of 'category_cubit.dart';

class CategoryState extends Equatable {
  String? bookName;
  String? description;
  Map<dynamic, String>? images;
  String? author;
  LoadStatus? loadStatus;

  CategoryState({
    this.bookName,
    this.author,
    this.description,
    this.images,
    this.loadStatus,
  });

  @override
  List<Object?> get props =>
      [loadStatus, bookName, author, images, description];

  CategoryState copyWith({
    String? bookName,
    String? description,
    Map<dynamic, String>? images,
    String? author,
    LoadStatus? loadStatus,
  }) {
    return CategoryState(
      bookName: bookName ?? this.bookName,
      author: author ?? this.author,
      description: description ?? this.description,
      images: images ?? this.images,
      loadStatus: loadStatus ?? this.loadStatus,
    );
  }
}
