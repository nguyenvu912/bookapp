import 'package:flutter/material.dart';
import 'package:flutter_base/app/constant/constant_barrel.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_bar_widget.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_button.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_text_field.dart';
import 'package:flutter_base/utils/validator.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class BookCategory {
  final int id;
  final String title;

  BookCategory({
    required this.id,
    required this.title,
  });
}

class _RegisterPageState extends State<RegisterPage> {
  static List<BookCategory> category = [
    BookCategory(id: 1, title: "Chính trị - pháp luật"),
    BookCategory(id: 2, title: "Khoa học công nghệ - Kinh tế"),
    BookCategory(id: 3, title: "Văn học nghệ thuật"),
    BookCategory(id: 4, title: "Văn hóa xã hội - Lịch sử"),
    BookCategory(id: 5, title: "Giáo trình"),
    BookCategory(id: 6, title: "Truyện - tiểu thuyết"),
    BookCategory(id: 7, title: "Tâm lý - tâm linh - tôn giáo"),
    BookCategory(id: 8, title: "Sách thiếu nhi"),
  ];

  final item = category
      .map((book) => MultiSelectItem<BookCategory>(book, book.title))
      .toList();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final verifyPassController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
          context: context,
          title: 'Thông tin tài khoản',
          icon: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: AppColors.white,
            ),
          )),
      body: SingleChildScrollView(
        reverse: true,
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Cung cấp thông tin cá nhân của bạn để hoàn tất đăng ký tài khoản nhé!',
                    style: AppTextStyle.grey(16)),
                const SizedBox(height: 24),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: 'Họ tên', style: AppTextStyle.grey(14)),
                  TextSpan(
                      text: ' *',
                      style: AppTextStyle.grey(14).copyWith(color: Colors.red))
                ])),
                const SizedBox(height: 8),
                AppTextField(
                  hintText: 'Nhập họ tên của bạn...',
                  maxLength: 100,
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return "Vui lòng nhập họ tên";
                    else
                      return null;
                  },
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: 'Số điện thoại', style: AppTextStyle.grey(14)),
                  TextSpan(
                      text: ' *',
                      style: AppTextStyle.grey(14).copyWith(color: Colors.red))
                ])),
                const SizedBox(height: 8),
                AppTextField(
                  hintText: 'Nhập số điện thoại của bạn...',
                  maxLength: 10,
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return "Vui lòng nhập số điện thoại";
                    else if (!Validator.validatePhone(value))
                      return "Số điện thoại không hợp lệ";
                    else
                      return null;
                  },
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: 'Email', style: AppTextStyle.grey(14)),
                  TextSpan(
                      text: ' *',
                      style: AppTextStyle.grey(14).copyWith(color: Colors.red))
                ])),
                const SizedBox(height: 8),
                AppTextField(
                  hintText: 'Nhập email của bạn...',
                  maxLength: 100,
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return "Vui lòng nhập email";
                    else if (!Validator.validateEmail(value))
                      return "Email không hợp lệ";
                    else
                      return null;
                  },
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: 'Mật khẩu', style: AppTextStyle.grey(14)),
                  TextSpan(
                      text: ' *',
                      style: AppTextStyle.grey(14).copyWith(color: Colors.red))
                ])),
                const SizedBox(height: 8),
                AppTextField(
                  hintText: 'Nhập mật khẩu của bạn...',
                  maxLength: 100,
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return "Vui lòng nhập mật khẩu";
                    else if (!Validator.validatePassword(value))
                      return "Mật khẩu tối thiểu 8 kí tự, ít nhất 1 chữ cái và 1 số";
                    else
                      return null;
                  },
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Xác nhận mật khẩu', style: AppTextStyle.grey(14)),
                  TextSpan(
                      text: ' *',
                      style: AppTextStyle.grey(14).copyWith(color: Colors.red))
                ])),
                const SizedBox(height: 8),
                AppTextField(
                  hintText: 'Xác nhận mật khẩu của bạn...',
                  maxLength: 100,
                  controller: verifyPassController,
                  validator: (value) {
                    if (value == null || value.isEmpty)
                      return "Vui lòng nhập họ và tên";
                    else if (!Validator.validateFullName(value))
                      return "Họ và tên không hợp lệ";
                    else
                      return null;
                  },
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Thể loại sách (Chọn 3 thể loại)',
                      style: AppTextStyle.grey(14)),
                  TextSpan(
                      text: ' *',
                      style: AppTextStyle.grey(14).copyWith(color: Colors.red))
                ])),
                const SizedBox(height: 8),
                MultiSelectDialogField(
                  items: item,
                  title: Text("Thể loại sách"),
                  selectedColor: AppColors.main,
                  dialogHeight: 300,
                  dialogWidth: 150,
                  confirmText: Text("Xác nhận", style: AppTextStyle.main(16)),
                  cancelText: Text(
                    "Huỷ",
                    style: AppTextStyle.redD9(16),
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      color: AppColors.greyD8,
                      width: 1,
                    ),
                  ),
                  selectedItemsTextStyle: AppTextStyle.main(16),
                  buttonIcon: Icon(
                    Icons.bookmark,
                    color: AppColors.main,
                  ),
                  buttonText: Text(
                    "Thể loại sách bạn đang quan tâm...",
                    style: TextStyle(
                      color: AppColors.greyD8,
                      fontSize: 16,
                    ),
                  ),
                  onConfirm: (results) {
                    //_selectedAnimals = results;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        margin: const EdgeInsets.only(bottom: 36),
        child: AppButton(
          color: AppColors.main,
          width: double.infinity,
          title: 'Đăng ký ngay',
          onPressed: () {},
        ),
      ),
    );
    ;
  }
}
