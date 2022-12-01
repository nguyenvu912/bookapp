import 'package:flutter/material.dart';
import 'package:flutter_base/app/constant/constant_barrel.dart';
import 'package:flutter_base/presentations/router/routers.dart';
import 'package:flutter_base/presentations/screen/home/bottom_bar/cubit/bottom_bar_cubit.dart';
import 'package:flutter_base/presentations/screen/home/bottom_bar/navigator_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomBarWidget extends StatelessWidget {
  final PageController bottomBarController;
  const BottomBarWidget({
    Key? key,
    required this.bottomBarController,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomBarCubit, BottomBarState>(
      builder: (context, state) {
        return Container(
          // decoration: BoxDecoration(
          //   border: Border(top: BorderSide(width: 1.0, color: AppColors.main)),
          // ),
          child: Row(
            children: [
              NavigationIconWidget(
                title: 'Home',
                icon: state.currentPage == 0
                    ? FaIcon(FontAwesomeIcons.house, color: AppColors.main)
                    : FaIcon(FontAwesomeIcons.house, color: AppColors.grey6B),
                isSelected: state.currentPage == 0,
                onTap: () {
                  if (state.currentPage == 0) return;
                  bottomBarController.jumpToPage(0);
                },
              ),
              NavigationIconWidget(
                  icon: state.currentPage == 1
                      ? FaIcon(FontAwesomeIcons.comment, color: AppColors.main)
                      : FaIcon(FontAwesomeIcons.comment,
                          color: AppColors.grey6B),
                  title: 'Diễn đàn',
                  isSelected: state.currentPage == 1,
                  onTap: () {
                    if (state.currentPage == 1) return;
                    bottomBarController.jumpToPage(1);
                  }),
              NavigationPushBookWidget(
                onTap: () async {
                  final a = await Application.router!
                      .navigateTo(context, Routes.pushBook);

                  if (a == 1) {
                    if (state.currentPage == 1) return;
                    bottomBarController.jumpToPage(1);
                  }
                },
              ),
              NavigationIconWidget(
                  icon: state.currentPage == 2
                      ? FaIcon(FontAwesomeIcons.rectangleList,
                          color: AppColors.main)
                      : FaIcon(FontAwesomeIcons.rectangleList,
                          color: AppColors.grey6B),
                  isSelected: state.currentPage == 2,
                  title: 'Danh mục',
                  onTap: () {
                    if (state.currentPage == 2) return;
                    bottomBarController.jumpToPage(2);
                  }),
              NavigationIconWidget(
                  icon: state.currentPage == 3
                      ? FaIcon(FontAwesomeIcons.circleUser,
                          color: AppColors.main)
                      : FaIcon(FontAwesomeIcons.circleUser,
                          color: AppColors.grey6B),
                  isSelected: state.currentPage == 3,
                  title: 'Tài khoản',
                  onTap: () {
                    if (state.currentPage == 3) return;
                    bottomBarController.jumpToPage(3);
                  })
            ],
          ),
        );
      },
    );
  }
}
