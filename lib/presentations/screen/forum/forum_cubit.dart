import 'package:equatable/equatable.dart';
import 'package:flutter_base/model/enum/load_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'forum_state.dart';

class ForumCubit extends Cubit<ForumState> {
  ForumCubit({dynamic}) : super(ForumState());

  void createBook() {}
}
