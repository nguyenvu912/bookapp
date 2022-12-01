part of 'forum_cubit.dart';

class ForumState extends Equatable {
  String? bookName;
  String? description;
  Map<dynamic, String>? images;
  String? author;
  LoadStatus? loadStatus;

  ForumState({
    this.bookName,
    this.author,
    this.description,
    this.images,
    this.loadStatus,
  });

  @override
  List<Object?> get props =>
      [loadStatus, bookName, author, images, description];

  ForumState copyWith({
    String? bookName,
    String? description,
    Map<dynamic, String>? images,
    String? author,
    LoadStatus? loadStatus,
  }) {
    return ForumState(
      bookName: bookName ?? this.bookName,
      author: author ?? this.author,
      description: description ?? this.description,
      images: images ?? this.images,
      loadStatus: loadStatus ?? this.loadStatus,
    );
  }
}
