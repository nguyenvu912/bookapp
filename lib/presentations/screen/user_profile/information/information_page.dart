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
          "Th??ng tin t??i kho???n",
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
                      _buildLabel('H??? v?? t??n'),
                      AppTextField(
                        maxLength: 100,
                        hintText: "Nh???p h??? v?? t??n...",
                        controller: fullNameController,
                        validator: (value) {
                          if (value == null || value.isEmpty)
                            return "Vui l??ng nh???p h??? v?? t??n";
                          else if (!Validator.validateFullName(value))
                            return "H??? v?? t??n kh??ng h???p l???";
                          else
                            return null;
                        },
                      ),
                      _buildLabel('S??? ??i???n tho???i'),
                      AppTextField(
                        enable: phoneController.text.isEmpty,
                        maxLength: 10,
                        hintText: "Nh???p s??? ??i???n tho???i...",
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        suffixIcon: FaIcon(
                          FontAwesomeIcons.phone,
                        ),
                        validator: (phone) {
                          if (phone == null || phone.isEmpty)
                            return "Vui l??ng nh???p s??? ??i???n tho???i";
                          if (Validator.validatePhone(phone)) return null;
                          return "S??? ??i???n tho???i kh??ng h???p l???";
                        },
                      ),
                      _buildLabel('Ng??y sinh'),
                      AppTextField(
                        enable: birthDayController.text.isEmpty,
                        readOnly: true,
                        suffixIcon: SizedBox(
                            height: 20,
                            width: 20,
                            child: FaIcon(FontAwesomeIcons.calendar)),
                        hintText: 'Ch???n ng??y sinh c???a b???n...',
                        controller: birthDayController,
                        validator: (value) {
                          if (value == null || value.isEmpty)
                            return "Vui l??ng ch???n ng??y sinh";
                          else
                            return null;
                        },
                        onTap: () {
                          AppDatePicker(
                                  title: 'Ch???n ng??y sinh',
                                  context: context,
                                  onDateTimeSelected: (value) {
                                    // birthDayController.text = value.displayDate();
                                  })
                              .show();
                        },
                      ),
                      _buildLabel('Gi???i t??nh'),
                      AppDropDown<String>(
                        initialValue: widget.user.gender == 1 ? 'Nam' : "N???",
                        items: ['Nam', 'N???'],
                        validator: (value) {
                          if (value == null)
                            return "Vui l??ng ch???n gi???i t??nh";
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
                        hintText: "Nh???p email c???a b???n...",
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: (email) {
                          if (Validator.validateEmail(email)) return null;
                          return "Email kh??ng h???p l???";
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
                  AppSnackBar.showSuccess("C???p nh???t th??ng tin th??nh c??ng");
                }
                if (state.updateProfileStatus == LoadStatus.FAILURE) {
                  Navigator.of(context).pop();
                  AppSnackBar.showError(
                      state.errorMess ?? "Hi???n kh??ng th??? c???p nh???p th??ng tin");
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
                      title: 'L??u th??ng tin',
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
