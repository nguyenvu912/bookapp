import 'package:fluro/fluro.dart';
import 'package:flutter_base/presentations/screen/forum/forum_cubit.dart';
import 'package:flutter_base/presentations/screen/forum/forum_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Handler forumHandler = Handler(handlerFunc: (context, parameters) {
  return BlocProvider(
    create: (context) {
      return ForumCubit();
    },
    child: ForumPage(),
  );
});
