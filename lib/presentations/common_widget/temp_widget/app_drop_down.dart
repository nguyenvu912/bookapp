import 'package:flutter/material.dart';
import 'package:flutter_base/app/constant/constant_barrel.dart';

class AppDropDown<T> extends StatelessWidget {
  final List<T> items;

  final String hintText;
  final ValueChanged<T?>? onChanged;
  final FormFieldValidator<T>? validator;
  final bool enable;

  final AutovalidateMode? autoValidateMode;
  final T? initialValue;
  final bool? obscureText;
  final Widget? suffixIcon;
  final bool? readOnly;
  final VoidCallback? onTap;

  final int? maxLine;
  const AppDropDown(
      {Key? key,
      required this.items,
      this.hintText = 'Lựa chọn',
      this.onChanged,
      this.validator,
      this.enable = true,
      this.autoValidateMode,
      this.initialValue,
      this.obscureText,
      this.suffixIcon,
      this.readOnly,
      this.onTap,
      this.maxLine})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
        value: initialValue,
        items: items.map<DropdownMenuItem<T>>((value) {
          return DropdownMenuItem(
            child: Text(
              value.toString(),
              style: AppTextStyle.black(16),
            ),
            value: value,
          );
        }).toList(),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(
            left: 13,
            right: 10,
            top: 10,
            bottom: 10,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.red),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColors.greyD8),
          ),
          disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.greyD8),
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
          errorStyle: AppTextStyle.errorText(14),
          hintText: 'Lựa chọn',
          hintStyle: AppTextStyle.hintText(14, weight: FontWeight.normal),
          filled: enable ? null : true,
          fillColor: enable ? null : AppColors.greyD8,
          isDense: true,
        ),
        icon: suffixIcon,
        autovalidateMode: autoValidateMode,
        validator: validator,
        style: AppTextStyle.black(14, weight: FontWeight.bold),
        onChanged: enable ? onChanged : null);
  }
}
