import 'package:fluro/fluro.dart';
import 'package:flutter_base/presentations/router/router_handler/auth_handler.dart';
import 'package:flutter_base/presentations/router/router_handler/book_handler.dart';
import 'package:flutter_base/presentations/router/router_handler/forum_handler.dart';
import 'package:flutter_base/presentations/router/router_handler/home_handler.dart';
import 'package:flutter_base/presentations/router/router_handler/profile_handler.dart';
import 'package:flutter_base/presentations/router/router_handler/root_handler.dart';

part 'application.dart';

class Routes {
  //Root
  static String root = "/";

  //Login and Register
  static String login = "/login";
  static String registry = "/registry";

  //Home
  static String home = "/home";

  //Book
  static String pushBook = "/pushBook";

  //User Profile
  static String profile = "/profile";
  static String information = "/information";

  //Forum
  static String forum = "/forum";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = notHandler;

    router.define(
      root,
      handler: splashHandler,
      transitionType: TransitionType.native,
    );

    //Login & Register
    router.define(
      login,
      handler: loginHandler,
      transitionType: TransitionType.native,
    );

    router.define(
      registry,
      handler: registryHandler,
      transitionType: TransitionType.fadeIn,
    );

    //Home
    router.define(
      home,
      handler: homeHandler,
      transitionType: TransitionType.native,
    );

    //Profile
    router.define(profile,
        handler: profileHandler, transitionType: TransitionType.native);

    router.define(information,
        handler: informationHandler, transitionType: TransitionType.native);

    //Book
    router.define(pushBook,
        handler: pushBookHandler, transitionType: TransitionType.native);

    //Forum
    router.define(forum,
        handler: forumHandler, transitionType: TransitionType.native);
  }
}
