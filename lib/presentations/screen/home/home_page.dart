import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/app/auth_bloc/auth_bloc.dart';
import 'package:flutter_base/app/constant/constant_barrel.dart';
import 'package:flutter_base/app/main_bloc/app_cubit.dart';
import 'package:flutter_base/model/enum/load_status.dart';
import 'package:flutter_base/model/local_storage/shared_preferences_helper.dart';
import 'package:flutter_base/model/repository/auth_repository.dart';
import 'package:flutter_base/model/repository/profile_repository.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_button.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_dialog.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_full_page_loading.dart';
import 'package:flutter_base/presentations/router/routers.dart';
import 'package:flutter_base/presentations/screen/category/category_cubit.dart';
import 'package:flutter_base/presentations/screen/category/category_page.dart';
import 'package:flutter_base/presentations/screen/forum/forum_cubit.dart';
import 'package:flutter_base/presentations/screen/forum/forum_page.dart';
import 'package:flutter_base/presentations/screen/home/bottom_bar/bottom_bar_widget.dart';
import 'package:flutter_base/presentations/screen/home/bottom_bar/cubit/bottom_bar_cubit.dart';
import 'package:flutter_base/presentations/screen/home/home_cubit.dart';
import 'package:flutter_base/presentations/screen/home/home_widget/home_widget_page.dart';
import 'package:flutter_base/presentations/screen/user_profile/profile/profile_cubit.dart';
import 'package:flutter_base/presentations/screen/user_profile/profile/profile_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final GlobalKey<NavigatorState> homeNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> forumNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> categoryNavigatorKey =
    GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> profileNavigatorKey =
    GlobalKey<NavigatorState>();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController pageController = PageController();
  late AppCubit appCubit;
  late BottomBarCubit bottomBarCubit;
  late HomeCubit homeCubit;

  @override
  void initState() {
    homeCubit = BlocProvider.of<HomeCubit>(context);
    bottomBarCubit = BlocProvider.of<BottomBarCubit>(context);
    appCubit = BlocProvider.of<AppCubit>(context);
    getRouter();
    super.initState();

    pageController.addListener(() {
      if (pageController.page == 0) {
        bottomBarCubit.changePage(0);
      } else if (pageController.page == 1) {
        bottomBarCubit.changePage(1);
      } else if (pageController.page == 2) {
        bottomBarCubit.changePage(2);
      } else if (pageController.page == 3) {
        bottomBarCubit.changePage(3);
      }
    });
  }

  void getRouter() async {
    final a = await SharedPreferencesHelper.getRouter();
    if (a == 1) {
      pageController.jumpToPage(1);
      await SharedPreferencesHelper.setRouter(0);
    }
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {},
      child: Scaffold(
        body: WillPopScope(
          onWillPop: () async {
            bool result = await configureWillPopScope();
            return result;
          },
          child: Stack(children: [
            Column(
              children: [
                Expanded(
                    child: PageView(
                        physics: NeverScrollableScrollPhysics(),
                        controller: pageController,
                        children: [
                      HomePageWidget(
                        pageController: pageController,
                      ),
                      BlocProvider(
                        create: (context) {
                          return ForumCubit();
                        },
                        child: ForumPage(),
                      ),
                      BlocProvider(
                        create: (context) {
                          return CategoryCubit();
                        },
                        child: CategoryPage(),
                      ),
                      BlocProvider(
                        create: (context) {
                          final profileRepository =
                              RepositoryProvider.of<ProfileRepository>(context);
                          final authRepository =
                              RepositoryProvider.of<AuthRepository>(context);
                          return ProfileCubit(
                              profileRepository: profileRepository,
                              authRepository: authRepository);
                        },
                        child: ProfilePage(),
                      ),
                    ])),
                Container(
                  height: kBottomNavigationBarHeight +
                      (MediaQuery.of(context).viewPadding.bottom > 0
                          ? (MediaQuery.of(context).viewPadding.bottom - 15)
                          : 0),
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewPadding.bottom > 0
                          ? (MediaQuery.of(context).viewPadding.bottom - 30)
                          : 0),
                  child: BottomBarWidget(bottomBarController: pageController),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }

  Future<bool> configureWillPopScope() async {
    switch (pageController.page!.toInt()) {
      case 0:
        if (homeNavigatorKey.currentState != null) {
          final bool result = await homeNavigatorKey.currentState!.maybePop();
          if (result)
            return false;
          else
            return true;
        }
        break;
      case 1:
        if (forumNavigatorKey.currentState != null) {
          final bool result = await forumNavigatorKey.currentState!.maybePop();
          if (result)
            return false;
          else
            return true;
        }
        break;
      case 2:
        if (categoryNavigatorKey.currentState != null) {
          final bool result =
              await categoryNavigatorKey.currentState!.maybePop();
          if (result)
            return false;
          else
            return true;
        }
        break;
      case 3:
        if (profileNavigatorKey.currentState != null) {
          final bool result =
              await profileNavigatorKey.currentState!.maybePop();
          if (result)
            return false;
          else
            return true;
        }
        break;
    }
    return true;
  }
}
