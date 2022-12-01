import 'package:flutter/material.dart';
import 'package:flutter_base/app/constant/constant_barrel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppDialogg extends Dialog {
  final BuildContext context;
  final Widget icon;
  final Widget? action;
  final bool showClose;
  final VoidCallback? onClose;
  AppDialogg({
    Key? key,
    required String title,
    String? content,
    Widget? buildContent,
    required this.context,
    required this.icon,
    this.action,
    this.showClose = true,
    this.onClose,
  }) : super(
          key: key,
          insetPadding: EdgeInsets.all(24),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: EdgeInsets.only(top: 24, bottom: 20, right: 20, left: 20),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    icon,
                    if (icon == SizedBox()) ...[
                      SizedBox(height: 24),
                    ],
                    Text(
                      title,
                      style: AppTextStyle.black(16, weight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 4),
                    if (content != null)
                      Text(
                        content,
                        style: AppTextStyle.grey(14),
                        textAlign: TextAlign.center,
                      ),
                    if (buildContent != null) buildContent,
                    if (action != null)
                      Padding(padding: EdgeInsets.only(top: 20), child: action)
                  ],
                ),
                if (showClose)
                  Positioned(
                    top: 0,
                    right: 0,
                    child: GestureDetector(
                        onTap: () {
                          if (onClose != null) {
                            onClose();
                          } else {
                            Navigator.of(context).pop();
                          }
                        },
                        child: FaIcon(FontAwesomeIcons.circleXmark)),
                  )
              ],
            ),
          ),
        );
}
