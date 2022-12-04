import 'package:flutter/material.dart';
import 'package:flutter_base/app/constant/constant_barrel.dart';
import 'package:flutter_base/model/enum/load_status.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_button.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_date_picker.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_drop_down.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_loading.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_snack_bar.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_text_field.dart';
import 'package:flutter_base/presentations/screen/user_profile/information/information_cubit.dart';
import 'package:flutter_base/utils/key_board_util.dart';
import 'package:flutter_base/utils/validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InformationPage extends StatefulWidget {
  final UserArgument user;
  InformationPage({Key? key, required this.user}) : super(key: key);

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  late TextEditingController fullNameController;
  late TextEditingController phoneController;
  late TextEditingController emailController;
  late TextEditingController birthDayController;
  late InformationCubit _cubit;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    fullNameController = TextEditingController(
        text: (widget.user.firstName! + " " + widget.user.lastName!));
    phoneController = TextEditingController(text: widget.user.cellPhone);
    emailController = TextEditingController(text: widget.user.email);
    birthDayController = TextEditingController(text: widget.user.dob);

    _cubit = BlocProvider.of<InformationCubit>(context);

    // if (widget.user.dob != null || widget.user.dob.toString().isNotEmpty) {
    //   // _cubit.disableBirthdayField();
    // }

    // _cubit.changeName(fullNameController.text);
    // _cubit.changeEmail(emailController.text);
    // _cubit.changeBirthDay(widget.user.dob);
    // _cubit.changeGender(widget.user.gender!);

    // fullNameController.addListener(() {
    //   _cubit.changeName(fullNameController.text);
    // });

    // emailController.addListener(() {
    //   _cubit.changeEmail(emailController.text);
    // });

    // birthDayController.addListener(() {
    //   _cubit.changeBirthDay(birthDayController.text);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Thông tin tài khoản",
          style: AppTextStyle.black(18, weight: FontWeight.bold),
        ),
        elevation: 0,
        bottom: PreferredSize(
          child: Container(
            color: AppColors.greyED,
            height: 1.0,
          ),
          preferredSize: Size.fromHeight(1.0),
        ),
        centerTitle: true,
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
            color: Color(0xFF2C2C2C),
            size: 26,
          ),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: _formKey,
              child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildLabel('Họ và tên'),
                      AppTextField(
                        maxLength: 100,
                        hintText: "Nhập họ và tên...",
                        controller: fullNameController,
                        validator: (value) {
                          if (value == null || value.isEmpty)
                            return "Vui lòng nhập họ và tên";
                          else if (!Validator.validateFullName(value))
                            return "Họ và tên không hợp lệ";
                          else
                            return null;
                        },
                      ),
                      _buildLabel('Số điện thoại'),
                      AppTextField(
                        enable: phoneController.text.isEmpty,
                        maxLength: 10,
                        hintText: "Nhập số điện thoại...",
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        suffixIcon: FaIcon(
                          FontAwesomeIcons.phone,
                        ),
                        validator: (phone) {
                          if (phone == null || phone.isEmpty)
                            return "Vui lòng nhập số điện thoại";
                          if (Validator.validatePhone(phone)) return null;
                          return "Số điện thoại không hợp lệ";
                        },
                      ),
                      _buildLabel('Ngày sinh'),
                      AppTextField(
                        enable: birthDayController.text.isEmpty,
                        readOnly: true,
                        suffixIcon: SizedBox(
                            height: 20,
                            width: 20,
                            child: FaIcon(FontAwesomeIcons.calendar)),
                        hintText: 'Chọn ngày sinh của bạn...',
                        controller: birthDayController,
                        validator: (value) {
                          if (value == null || value.isEmpty)
                            return "Vui lòng chọn ngày sinh";
                          else
                            return null;
                        },
                        onTap: () {
                          AppDatePicker(
                                  title: 'Chọn ngày sinh',
                                  context: context,
                                  onDateTimeSelected: (value) {
                                    // birthDayController.text = value.displayDate();
                                  })
                              .show();
                        },
                      ),
                      _buildLabel('Giới tính'),
                      AppDropDown<String>(
                        initialValue: widget.user.gender == 1 ? 'Nam' : "Nữ",
                        items: ['Nam', 'Nữ'],
                        validator: (value) {
                          if (value == null)
                            return "Vui lòng chọn giới tính";
                          else
                            return null;
                        },
                        onChanged: (value) {
                          // _cubit.changeGender(value == "Nam" ? 1 : 0);
                        },
                        suffixIcon: SizedBox(
                            height: 20,
                            width: 20,
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              size: 20,
                            )),
                      ),
                      _buildLabel('Email'),
                      AppTextField(
                        enable: widget.user.email!
                                    .contains("@tgsfake.ggg.com.vn") ==
                                true ||
                            widget.user.email!.length == 0,
                        maxLength: 100,
                        hintText: "Nhập email của bạn...",
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: (email) {
                          if (Validator.validateEmail(email)) return null;
                          return "Email không hợp lệ";
                        },
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ),
            ),
            BlocConsumer<InformationCubit, InformationState>(
              buildWhen: (previous, current) =>
                  previous.updateProfileStatus != current.updateProfileStatus ||
                  previous.fullName != current.fullName ||
                  previous.email != current.email ||
                  previous.gender != current.gender ||
                  previous.birthDay != current.birthDay,
              listenWhen: (previous, current) =>
                  previous.updateProfileStatus != current.updateProfileStatus,
              listener: (context, state) {
                if (state.updateProfileStatus == LoadStatus.SUCCESS) {
                  Navigator.of(context).pop();
                  Navigator.of(context).pop(state.updateProfileResponse);
                  // BlocProvider.of<AuthBloc>(context).add(
                  //     Registered(updatedInfo: state.updateProfileResponse!));
                  AppSnackBar.showSuccess("Cập nhật thông tin thành công");
                }
                if (state.updateProfileStatus == LoadStatus.FAILURE) {
                  Navigator.of(context).pop();
                  AppSnackBar.showError(
                      state.errorMess ?? "Hiện không thể cập nhập thông tin");
                }

                if (state.updateProfileStatus == LoadStatus.LOADING) {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => WillPopScope(
                      onWillPop: () async => false,
                      child: AppLoading(),
                    ),
                  );
                }
              },
              builder: (context, state) {
                return Column(
                  children: [
                    AppButton(
                      color: AppColors.main,
                      width: double.infinity,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          KeyboardUtils.dismiss();
                          // _cubit.updateProfile();
                        }
                      },
                      title: 'Lưu thông tin',
                      isEnabled: state.fullName !=
                              (widget.user.firstName! +
                                  " " +
                                  widget.user.lastName!) ||
                          state.email != widget.user.email ||
                          state.gender != widget.user.gender ||
                          state.birthDay != widget.user.dob,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).viewPadding.bottom == 0
                          ? 20
                          : MediaQuery.of(context).viewPadding.bottom,
                    )
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }

  _buildLabel(String label) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(label, style: AppTextStyle.grey(14, weight: FontWeight.w500)),
    );
  }
}

class UserArgument {
  String? fullName;
  String? lastName;
  String? firstName;
  String? cellPhone;
  String? email;
  dynamic dob;
  int? gender;
  bool? isNewUser;

  UserArgument(
      {this.fullName,
      this.cellPhone,
      this.dob,
      this.gender,
      this.email,
      this.isNewUser,
      this.firstName,
      this.lastName});
}
