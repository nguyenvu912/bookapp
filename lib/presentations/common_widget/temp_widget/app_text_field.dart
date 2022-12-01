import 'package:flutter/material.dart';
import 'package:flutter_base/app/constant/app_colors.dart';
import 'package:flutter_base/app/constant/app_text_styles.dart';

class AppTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final TextInputType keyboardType;
  final FormFieldSetter<String>? onSaved;
  final bool? isRequire;
  final bool? enable;
  final TextStyle? labelStyle;
  final AutovalidateMode? autoValidateMode;
  final String? initialValue;
  final bool? obscureText;
  final Widget? suffixIcon;
  final int? maxLength;
  final int? maxLines;

  const AppTextField(
      {Key? key,
      this.initialValue,
      this.labelText = '',
      this.hintText = '',
      this.controller,
      this.onChanged,
      this.keyboardType = TextInputType.text,
      this.autoValidateMode,
      this.validator,
      this.onSaved,
      this.isRequire,
      this.labelStyle,
      this.enable,
      this.obscureText = false,
      this.suffixIcon,
      this.maxLength,
      this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      obscuringCharacter: "*",
      enabled: enable,
      maxLength: maxLength,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(
          left: 13,
          right: 15,
          top: 13,
          bottom: 13,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.red),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.greyD8),
        ),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.main),
            borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.greyD8),
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.main),
            borderRadius: BorderRadius.circular(8)),
        // focusedErrorBorder: OutlineInputBorder(
        //   // borderRadius: BorderRadius.circular(10),
        //   borderSide: BorderSide(color: AppColors.lineGray),
        // ),
        hintText: hintText,
        hintStyle: AppTextStyle.hintText(14, weight: FontWeight.normal),
        suffixIcon: suffixIcon != null
            ? Padding(padding: EdgeInsets.only(right: 10), child: suffixIcon)
            : null,
        suffixIconConstraints: BoxConstraints(minWidth: 15, minHeight: 15),
        isDense: true,
      ),
      initialValue: initialValue,
      autovalidateMode: autoValidateMode,
      validator: validator,
      keyboardType: keyboardType,
      onChanged: onChanged,
      style: AppTextStyle.black(14, weight: FontWeight.bold),
      onSaved: onSaved,
    );
  }
}
