import 'package:flutter/material.dart';
import 'package:flutter_base/app/constant/constant_barrel.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_button.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_cache_image.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_loading.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_snack_bar.dart';
import 'package:flutter_base/presentations/router/routers.dart';
import 'package:flutter_base/presentations/screen/user_profile/profile/profile_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class HeaderProfileWidget extends StatelessWidget {
  final String fullName;
  final String imageUrl;

  const HeaderProfileWidget({
    Key? key,
    required this.fullName,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final cubit = context.read<ProfileCubit>();
    return Stack(
      children: [
        Container(
            child: Row(
          children: [
            CircleAvatar(
              child: AppCacheImage(
                url: imageUrl,
                borderRadius: 100,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              '${fullName}',
              style: AppTextStyle.black(16, weight: FontWeight.bold),
            ),
          ],
        )),
      ],
    );
  }
}
