import 'package:fluro/fluro.dart';
import 'package:flutter_base/presentations/router/router_handler/auth_handler.dart';
import 'package:flutter_base/presentations/router/router_handler/book_handler.dart';
import 'package:flutter_base/presentations/router/router_handler/forum_handler.dart';
import 'package:flutter_base/presentations/router/router_handler/home_handler.dart';
import 'package:flutter_base/presentations/router/router_handler/profile_handler.dart';
import 'package:flutter_base/presentations/router/router_handler/root_handler.dart';

part 'application.dart';

class Routes {
  static String root = "/";

  static String login = "/login";
  static String changePassword = "/changePassword";
  static String forgotPassword = "/forgotPassword";
  static String registry = "/registry";

  static String home = "/home";

  static String pushBook = "/pushBook";

  static String profile = "/profile";

  static String forum = "/forum";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = notHandler;

    router.define(
      root,
      handler: splashHandler,
      transitionType: TransitionType.native,
    );
    router.define(
      login,
      handler: loginHandler,
      transitionType: TransitionType.native,
    );
    // router.define(
    //   changePassword,
    //   handler: changePasswordHandler,
    //   transitionType: TransitionType.fadeIn,
    // );
    // router.define(
    //   forgotPassword,
    //   handler: forgotPasswordHandler,
    //   transitionType: TransitionType.fadeIn,
    // );
    router.define(
      registry,
      handler: registryHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      home,
      handler: homeHandler,
      transitionType: TransitionType.native,
    );

    router.define(profile,
        handler: profileHandler, transitionType: TransitionType.native);

    router.define(pushBook,
        handler: pushBookHandler, transitionType: TransitionType.native);

    router.define(forum,
        handler: forumHandler, transitionType: TransitionType.native);
  }
}
