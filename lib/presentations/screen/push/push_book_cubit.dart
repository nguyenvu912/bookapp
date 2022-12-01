import 'package:equatable/equatable.dart';
import 'package:flutter_base/model/enum/load_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'push_book_state.dart';

class PushBookCubit extends Cubit<PushBookState> {
  PushBookCubit({dynamic}) : super(PushBookState());

  void createBook() {}
}
