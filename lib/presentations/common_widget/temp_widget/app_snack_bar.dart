import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/app/constant/constant_barrel.dart';
import 'package:flutter_base/app.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppSnackBar {
  static void showSuccess(String message,
      {FlushbarPosition position = FlushbarPosition.TOP, EdgeInsets? margin}) {
    Flushbar(
      icon: FaIcon(FontAwesomeIcons.circleCheck, color: AppColors.green47),
      messageText: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            message,
            style: AppTextStyle.black(14, weight: FontWeight.w600),
          ),
          GestureDetector(
            onTap: () {
              appNavigatorKey.currentState!.maybePop();
            },
            child: SizedBox(
              width: 15,
              height: 15,
              child: FaIcon(FontAwesomeIcons.circleXmark),
            ),
          )
        ],
      ),
      flushbarStyle: FlushbarStyle.FLOATING,
      flushbarPosition: position,
      isDismissible: true,
      backgroundColor: Colors.white,
      boxShadows: AppShadow.snackBarShadow,
      duration: Duration(seconds: 3),
      margin: margin ?? EdgeInsets.symmetric(horizontal: 16, vertical: 3),
      borderRadius: BorderRadius.circular(6),
    )..show(appNavigatorKey.currentContext!);
  }

  static void showError(String? message,
      {FlushbarPosition position = FlushbarPosition.TOP, EdgeInsets? margin}) {
    Flushbar(
      icon: CircleAvatar(
        radius: 10,
        backgroundColor: AppColors.redE1,
        child: Padding(
          padding: EdgeInsets.all(1),
          child: FittedBox(
            child: Icon(
              Icons.close,
              color: AppColors.white,
            ),
          ),
        ),
      ),
      messageText: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              message ?? 'Có lỗi xảy ra. Vui lòng thử lại',
              style: AppTextStyle.black(14, weight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
          GestureDetector(
            onTap: () {
              appNavigatorKey.currentState!.maybePop();
            },
            child: SizedBox(),
          )
        ],
      ),
      flushbarStyle: FlushbarStyle.FLOATING,
      flushbarPosition: position,
      isDismissible: true,
      backgroundColor: Colors.white,
      boxShadows: AppShadow.snackBarShadow,
      duration: Duration(seconds: 3),
      margin: margin ?? EdgeInsets.symmetric(horizontal: 16, vertical: 3),
      borderRadius: BorderRadius.circular(6),
    )..show(appNavigatorKey.currentContext!);
  }
}
