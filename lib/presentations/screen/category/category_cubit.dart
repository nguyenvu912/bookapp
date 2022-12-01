import 'package:equatable/equatable.dart';
import 'package:flutter_base/model/enum/load_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit({dynamic}) : super(CategoryState());

  void createBook() {}
}
