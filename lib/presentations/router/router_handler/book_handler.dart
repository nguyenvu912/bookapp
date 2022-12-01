import 'package:fluro/fluro.dart';
import 'package:flutter_base/presentations/screen/push/push_book_cubit.dart';
import 'package:flutter_base/presentations/screen/push/push_book_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Handler pushBookHandler = Handler(handlerFunc: (context, parameters) {
  return BlocProvider(
    create: (context) {
      return PushBookCubit();
    },
    child: PushBookPage(),
  );
});
