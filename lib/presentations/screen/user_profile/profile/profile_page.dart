import 'package:flutter/material.dart';
import 'package:flutter_base/app/constant/constant_barrel.dart';
import 'package:flutter_base/presentations/router/routers.dart';
import 'package:flutter_base/presentations/screen/user_profile/profile/widget/header_widget.dart';
import 'package:flutter_base/presentations/screen/user_profile/profile/widget/menu_item_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        children: [
          HeaderProfileWidget(
            fullName: 'Nguyen Huy Vu',
            imageUrl: AppImages.icLogoApp,
          ),
          Expanded(
            child: Container(
              child: ListView(
                shrinkWrap: true,
                children: [
                  MenuItemWidget(
                      title: "Thông tin tài khoản",
                      icon: FaIcon(
                        FontAwesomeIcons.userAstronaut,
                        color: AppColors.main,
                        size: 16,
                      ),
                      onTap: () {
                        Application.router!
                            .navigateTo(context, Routes.information);
                      }),
                  MenuItemWidget(
                      title: "Mật khẩu",
                      icon: FaIcon(
                        FontAwesomeIcons.key,
                        color: AppColors.main,
                        size: 16,
                      ),
                      onTap: () {}),
                  MenuItemWidget(
                      title: "Sách của tôi",
                      icon: FaIcon(
                        FontAwesomeIcons.bookBookmark,
                        color: AppColors.main,
                        size: 16,
                      ),
                      onTap: () {}),
                  MenuItemWidget(
                      title: "Về chúng tôi",
                      icon: FaIcon(
                        FontAwesomeIcons.circleInfo,
                        color: AppColors.main,
                        size: 16,
                      ),
                      onTap: () async {
                        await launch(
                            "https://huce.edu.vn/khai-quat-lich-su-phat-trien");
                      }),
                  Container(
                    height: 72,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: Color(0xFFEDF2F9),
                      width: 1.0,
                    ))),
                    child: GestureDetector(
                      child: Row(
                        children: [
                          Container(
                            child: FaIcon(
                              FontAwesomeIcons.phone,
                              color: AppColors.main,
                              size: 16,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Hỗ trợ",
                            style:
                                AppTextStyle.black(16, weight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "(024) 38 696 397",
                            style:
                                AppTextStyle.blue(16, weight: FontWeight.w700),
                          )
                        ],
                      ),
                      onTap: () async {
                        await launch("tel://(024) 38 696 397");
                      },
                    ),
                  ),
                  MenuItemWidget(
                      title: "Đăng xuất",
                      icon: FaIcon(
                        FontAwesomeIcons.rightFromBracket,
                        color: AppColors.main,
                        size: 16,
                      ),
                      onTap: () {}),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
