import 'package:flutter/material.dart';
import 'package:flutter_base/app/constant/app_colors.dart';
import 'package:flutter_base/app/constant/app_text_styles.dart';

class AppButton extends StatelessWidget {
  final Color color;
  final String? title;
  final TextStyle? textStyle;
  final double? height;
  final double? width;
  final VoidCallback? onPressed;
  final Widget? child;
  final bool isLoading;
  final bool isEnabled;
  final double? border;
  final Color? borderColor;

  AppButton(
      {Key? key,
      this.title,
      required this.color,
      this.child,
      this.onPressed,
      this.textStyle,
      this.height,
      this.isLoading = false,
      this.isEnabled = true,
      this.width,
      this.border,
      this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isEnabled ? color : Color(0xFFCBCBCB),
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(border ?? 8),
          side: borderColor == null
              ? BorderSide.none
              : BorderSide(color: borderColor!)),
      child: InkWell(
        splashColor: color == AppColors.main ? Color(0xFFf8db8e) : null,
        onTap: isEnabled ? (isLoading ? null : onPressed) : null,
        child: Container(
          height: height ?? 44,
          width: width ?? 80,
          alignment: Alignment.center,
          child: isLoading
              ? Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: FittedBox(
                      child: CircularProgressIndicator(
                    color: Colors.white,
                  )),
                )
              : child ??
                  Text(
                    title!,
                    style: textStyle ??
                        AppTextStyle.white(14, weight: FontWeight.bold),
                  ),
        ),
      ),
    );
  }
}
