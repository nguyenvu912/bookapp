import 'package:flutter/material.dart';
import 'package:flutter_base/app.dart';
import 'package:flutter_base/app/constant/constant_barrel.dart';

class AppFullPageLoading extends StatelessWidget {
  const AppFullPageLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.black54,
      child: Center(
          child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: CircularProgressIndicator(
                  color: AppColors.main,
                  strokeWidth: 3.5,
                ),
              ))),
    );
  }
}

class AppDialogLoading {
  static void hideLoadingDialog() {
    Navigator.of(appNavigatorKey.currentContext!).pop();
  }

  static void showLoadingDialog(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) => Dialog(
              insetPadding: EdgeInsets.zero,
              backgroundColor: Colors.transparent,
              child: Center(
                child: CircularProgressIndicator(
                  color: AppColors.main,
                  strokeWidth: 3.5,
                ),
              ),
            ));
  }
}
