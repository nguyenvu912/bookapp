import 'package:flutter_base/model/api/request/book/create_book_request.dart';
import 'package:flutter_base/model/api/response/object_response.dart';
import 'package:flutter_base/model/entity/book/book_entity.dart';

abstract class BookRepository {
  Future<ObjectResponse<BookEntity>> createBook(CreateBookRequest params);
}
