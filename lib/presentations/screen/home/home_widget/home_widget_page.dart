import 'package:flutter/material.dart';
import 'package:flutter_base/app/constant/constant_barrel.dart';
import 'package:flutter_base/app/main_bloc/app_cubit.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_cache_image.dart';
import 'package:flutter_base/presentations/screen/home/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:flutter_base/app/app_data.dart';

class HomePageWidget extends StatefulWidget {
  final PageController pageController;

  const HomePageWidget({
    Key? key,
    required this.pageController,
  }) : super(key: key);
  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  TabController? tabController;
  late AutoScrollController mainController;
  bool isTabPressed = false;

  late AppCubit appCubit;
  late HomeCubit homeCubit;
  final userInfo = GlobalData.instance.userInfo;

  @override
  void initState() {
    print("userInfo ===========> ${userInfo!.name}");
    super.initState();
    homeCubit = BlocProvider.of<HomeCubit>(context);
    appCubit = BlocProvider.of<AppCubit>(context);

    mainController = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: Axis.vertical,
    );
  }

  @override
  void dispose() {
    super.dispose();
    mainController.dispose();
    tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        controller: mainController,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        slivers: [
          SliverToBoxAdapter(
            child: _buildAppBar(),
          ),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
        child: Stack(
      children: [
        Container(
          padding:
              const EdgeInsets.only(top: 32, left: 12, right: 12, bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: AppCacheImage(
                        url: AppImages.icLogoApp, borderRadius: 100),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome Back!',
                        style: AppTextStyle.grey(12, weight: FontWeight.w400),
                      ),
                      Text(
                        "${userInfo!.name}",
                        style: AppTextStyle.black(14, weight: FontWeight.w700),
                      ),
                    ],
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: FaIcon(
                      FontAwesomeIcons.magnifyingGlass,
                      color: AppColors.main,
                    ),
                  ),
                  const SizedBox(width: 24),
                  // GestureDetector(
                  //   onTap: () {},
                  //   child: FaIcon(
                  //     FontAwesomeIcons.bell,
                  //     color: AppColors.main,
                  //   ),
                  // )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 5.0, color: AppColors.greyED),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
