import 'package:flutter/material.dart';
import 'package:flutter_base/app/constant/constant_barrel.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_bar_widget.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_text_field.dart';

class PushBookPage extends StatefulWidget {
  const PushBookPage({super.key});

  @override
  State<PushBookPage> createState() => PushBookPageState();
}

class PushBookPageState extends State<PushBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        context: context,
        title: "Đăng sách",
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildTextLabel('Tên sách'),
            AppTextField(
              hintText: 'Nhập tên sách...',
              maxLength: 100,
              // controller: nameController,
              // validator: (value) {
              //   if (value == null || value.isEmpty)
              //     return "Vui lòng nhập họ và tên";
              //   else if (!Validator.validateFullName(value))
              //     return "Họ và tên không hợp lệ";
              //   else
              //     return null;
              // },
            ),
            _buildTextLabel('Tên tác giả'),
            AppTextField(
              hintText: 'Nhập tên tác giả...',
              maxLength: 100,
              // controller: nameController,
              // validator: (value) {
              //   if (value == null || value.isEmpty)
              //     return "Vui lòng nhập họ và tên";
              //   else if (!Validator.validateFullName(value))
              //     return "Họ và tên không hợp lệ";
              //   else
              //     return null;
              // },
            ),
            _buildTextLabel('Mô tả'),
            AppTextField(
              hintText: 'Nhập mô tả khái quát...',
              // controller: nameController,
              // validator: (value) {
              //   if (value == null || value.isEmpty)
              //     return "Vui lòng nhập họ và tên";
              //   else if (!Validator.validateFullName(value))
              //     return "Họ và tên không hợp lệ";
              //   else
              //     return null;
              // },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextLabel(String text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: text,
            style: AppTextStyle.black(12),
          ),
        ]),
      ),
    );
  }
}
