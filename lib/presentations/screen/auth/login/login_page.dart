import 'package:flutter/material.dart';
import 'package:flutter_base/app/constant/app_colors.dart';
import 'package:flutter_base/app/constant/app_images.dart';
import 'package:flutter_base/app/constant/app_text_styles.dart';
import 'package:flutter_base/model/enum/load_status.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_button.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_text_field.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/common_widget_loading.dart';
import 'package:flutter_base/presentations/router/routers.dart';
import 'package:flutter_base/utils/validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_cubit.dart';

class LoginPage extends StatefulWidget {
  LoginPage();

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  LoginCubit? _cubit;

  @override
  void initState() {
    _cubit = BlocProvider.of<LoginCubit>(context);

    _emailController.addListener(() {
      _cubit!.emailChange(_emailController.text);
    });

    _passwordController.addListener(() {
      _cubit!.passChange(_passwordController.text);
    });
    super.initState();
  }

  @override
  void dispose() {
    _cubit!.close();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        body: BlocConsumer<LoginCubit, LoginState>(
          bloc: _cubit,
          listenWhen: (prev, current) =>
              (prev.loadStatus != current.loadStatus),
          listener: (context, state) {
            if (state.loadStatus == LoadStatus.SUCCESS) {
              Application.router!.navigateTo(context, Routes.home);
            }

            if (state.loadStatus == LoadStatus.FAILURE) {
              print(state.errorMessage);
            }
          },
          buildWhen: (prev, curr) {
            return (prev.loadStatus != curr.loadStatus);
          },
          builder: (context, state) {
            return CommonWidgetLoading(
              body: SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.15),
                      Container(
                        width: 180,
                        height: 180,
                        alignment: Alignment.center,
                        child: Image.asset(AppImages.icLogoApp, width: 180),
                      ),
                      SizedBox(height: 8.15),
                      _buildTextLabel("Email"),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 28, vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: AppTextField(
                          autoValidateMode: AutovalidateMode.onUserInteraction,
                          hintText: 'Nh???p email c???a b???n...',
                          controller: _emailController,
                          validator: (value) {
                            if (!Validator.validateEmail(value!))
                              return "Email kh??ng h???p l???";
                            else
                              return null;
                          },
                        ),
                      ),
                      _buildTextLabel('M???t kh???u'),
                      Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 28, vertical: 12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          child: Stack(
                            children: [
                              AppTextField(
                                autoValidateMode:
                                    AutovalidateMode.onUserInteraction,
                                hintText: 'Nh???p m???t kh???u...',
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: true,
                                controller: _passwordController,
                                validator: (value) {
                                  if (!Validator.validatePassword(value!))
                                    return "M???t kh???u t???i thi???u 8 k?? t???, ??t nh???t 1 ch??? c??i v?? 1 s???";
                                  else
                                    return null;
                                },
                              ),
                            ],
                          )),
                      Container(
                        height: 40,
                        margin: EdgeInsets.only(top: 31),
                        padding: EdgeInsets.symmetric(horizontal: 28),
                        child: AppButton(
                            color: AppColors.main,
                            width: double.infinity,
                            title: "????ng nh???p",
                            onPressed: () {
                              _cubit!.requestLogin(_emailController.text,
                                  _passwordController.text);
                            },
                            isLoading: false),
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () => {
                          Application.router!.navigateTo(
                            context,
                            Routes.registry,
                          )
                        },
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('B???n ch??a c?? t??i kho???n?',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF000000),
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Application.router!
                                      .navigateTo(context, Routes.registry);
                                },
                                child: Text('????ng k??!',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: AppColors.main,
                                    )),
                              ),
                            ]),
                      )
                    ],
                  ),
                ),
              ),
              isLoading: state.loadStatus == LoadStatus.LOADING,
            );
          },
        ),
      ),
    );
  }

  Widget _buildTextLabel(String text) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.symmetric(horizontal: 28),
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
