import 'dart:async';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/app/app_config.dart';
import 'package:flutter_base/app/auth_bloc/auth_bloc.dart';
import 'package:flutter_base/app/constant/app_theme.dart';
import 'package:flutter_base/app/main_bloc/app_cubit.dart';
import 'package:flutter_base/model/api/api_client.dart';
import 'package:flutter_base/model/api/api_utils.dart';
import 'package:flutter_base/model/repository/auth_repository.dart';
import 'package:flutter_base/model/repository/profile_repository.dart';
import 'package:flutter_base/presentations/router/navigator_observer/navigator_observer.dart';
import 'package:flutter_base/presentations/router/routers.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base/presentations/screen/category/category_cubit.dart';
import 'package:flutter_base/presentations/screen/forum/forum_cubit.dart';
import 'package:flutter_base/presentations/screen/home/bottom_bar/cubit/bottom_bar_cubit.dart';
import 'package:flutter_base/presentations/screen/home/home_cubit.dart';
import 'package:flutter_base/presentations/screen/push/push_book_cubit.dart';
import 'package:flutter_base/presentations/screen/user_profile/profile/profile_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:overlay_support/overlay_support.dart';
import 'app/language/generated/l10n.dart';
import 'package:connectivity/connectivity.dart';

import 'presentations/router/navigator_observer/navigator_cubit.dart';

final appNavigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatefulWidget {
  MyApp() {
    final router = new FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  ApiClient? _apiClient;

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  OverlaySupportEntry? _overlaySupportEntry;
  bool networkEnabled = true;
  NavigationCubit? _navigationCubit;
  // late DynamicConfigCubit _dynamicConfigCubit;

  @override
  void initState() {
    super.initState();
    _apiClient = ApiUtil.getApiClient();

    _navigationCubit = NavigationCubit();
    // _dynamicConfigCubit = DynamicConfigCubit();
    initConnectivity();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initConnectivity() async {
    ConnectivityResult? result;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      print(e.toString());
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult? result) async {
    if (result != ConnectivityResult.wifi &&
        result != ConnectivityResult.mobile) {
      if (networkEnabled) {
        _overlaySupportEntry = showSimpleNotification(
          Container(
            child: Text('Không thể kết nối tới máy chủ.'),
          ),
          // contentPadding: EdgeInsets.all(1),
          leading: Icon(Icons.wifi, color: Colors.white),
          autoDismiss: false,
          slideDismiss: false,
          background: Colors.red,
        );
      }
      networkEnabled = false;
    } else {
      networkEnabled = true;
      _overlaySupportEntry?.dismiss(animate: true);
    }
  }

  @override
  void dispose() {
    _navigationCubit!.close();
    // _dynamicConfigCubit.close();
    _connectivitySubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AuthRepository>(create: (context) {
          return AuthRepositoryImpl(_apiClient);
        }),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppCubit>(create: (context) {
            final _authRepository =
                RepositoryProvider.of<AuthRepository>(context);

            return AppCubit(
              authRepository: _authRepository,
            );
          }),
          BlocProvider<NavigationCubit>(create: (context) => _navigationCubit!),
          BlocProvider<BottomBarCubit>(create: (context) {
            final _authRepository =
                RepositoryProvider.of<AuthRepository>(context);

            return BottomBarCubit(_authRepository);
          }),
          BlocProvider<HomeCubit>(create: (context) => HomeCubit()),
          BlocProvider<AuthBloc>(create: (context) {
            final _authRepository =
                RepositoryProvider.of<AuthRepository>(context);

            return AuthBloc(authRepository: _authRepository);
          }),

          BlocProvider<ProfileCubit>(create: (context) {
            final _authRepository =
                RepositoryProvider.of<AuthRepository>(context);
            final profileRepository =
                RepositoryProvider.of<ProfileRepository>(context);

            return ProfileCubit(
                authRepository: _authRepository,
                profileRepository: profileRepository);
          }),
          BlocProvider<PushBookCubit>(create: (context) {
            return PushBookCubit();
          }),

          BlocProvider<ForumCubit>(create: (context) {
            return ForumCubit();
          }),

          BlocProvider<CategoryCubit>(create: (context) {
            return CategoryCubit();
          }),
          // BlocProvider<DynamicConfigCubit>(
          //     create: (context) => _dynamicConfigCubit),
        ],
        child: BlocListener<AppCubit, AppState>(
          listener: (context, state) {},
          child: materialApp(),
        ),
        // child: materialApp(),
      ),
    );
  }

  GetMaterialApp materialApp() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: appNavigatorKey,
      title: AppConfig.appName,
      //đã sửa hardcode
      theme: AppThemes.theme,
      onGenerateRoute: Application.router!.generator,
      initialRoute: Routes.root,
      navigatorObservers: <NavigatorObserver>[
        NavigationObserver(navigationCubit: _navigationCubit),
      ],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            // When running in iOS, dismiss the keyboard when any Tap happens outside a TextField
            /*if (Platform.isIOS) */ hideKeyboard(context);
          },
          child: MediaQuery(
            child: child!,
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          ),
        );
      },
    );
  }

  void hideKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus!.unfocus();
    }
  }
}
