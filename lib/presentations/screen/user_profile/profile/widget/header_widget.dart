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
        // Container(
        //   margin: EdgeInsets.symmetric(horizontal: 16),
        //   padding: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
        //   decoration: BoxDecoration(
        //     boxShadow: [
        //       BoxShadow(
        //           offset: Offset(0, 5),
        //           color: Color.fromRGBO(0, 0, 0, 0.06),
        //           blurRadius: 24)
        //     ],
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(8),
        //   ),
        // child: BlocConsumer<ProfileCubit, ProfileState>(
        //   listenWhen: (previous, current) =>
        //       previous.changeAvatarStatus != current.changeAvatarStatus,
        //   buildWhen: (previous, current) =>
        //       previous.changeAvatarStatus != current.changeAvatarStatus,
        //   listener: (context, state) {
        //     if (state.changeAvatarStatus == ChangeAvatarStatus.success) {
        //       Navigator.of(context)
        //           .popUntil((route) => route.settings.name == Routes.home);
        //       AppSnackBar.showSuccess('Thay đổi ảnh đại diện thành công');
        //     } else if (state.changeAvatarStatus ==
        //         ChangeAvatarStatus.failure) {
        //       Navigator.of(context)
        //           .popUntil((route) => route.settings.name == Routes.home);
        //       AppSnackBar.showError("Không thể thay đổi ảnh đại diện");
        //     } else if (state.changeAvatarStatus ==
        //         ChangeAvatarStatus.permissionDenied) {
        //       showDialog(
        //           context: context,
        //           builder: (context) => AlertDialog(
        //                 content: Text(state.errorMessage!),
        //                 actions: [
        //                   AppButton(
        //                     color: AppColors.white,
        //                     title: 'Hủy',
        //                     onPressed: () => Navigator.of(context).pop(),
        //                   ),
        //                   AppButton(
        //                     color: AppColors.main,
        //                     title: 'Tới cài đặt',
        //                     onPressed: () {
        //                       Navigator.of(context).pop();
        //                       openAppSettings();
        //                     },
        //                   ),
        //                 ],
        //               ));
        //     }
        //   },
        //   builder: (context, state) {
        //     return Row(
        //       children: [
        //         GestureDetector(
        //           onTap: () {
        //             if (state.changeAvatarStatus !=
        //                 ChangeAvatarStatus.loading) {
        //               showDialog(
        //                   context: context,
        //                   builder: (context) => BlocProvider.value(
        //                         value: cubit,
        //                         child: Dialog(
        //                           backgroundColor: Colors.transparent,
        //                           insetPadding: EdgeInsets.symmetric(
        //                               horizontal: 16, vertical: 22),
        //                           alignment: Alignment.bottomCenter,
        //                           child: Column(
        //                             crossAxisAlignment:
        //                                 CrossAxisAlignment.stretch,
        //                             mainAxisSize: MainAxisSize.min,
        //                             children: [
        //                               Container(
        //                                 decoration: BoxDecoration(
        //                                     color: Color(0xFFE1E1E1),
        //                                     borderRadius:
        //                                         BorderRadius.circular(14)),
        //                                 margin: EdgeInsets.symmetric(
        //                                     vertical: 12),
        //                                 child: Column(
        //                                   crossAxisAlignment:
        //                                       CrossAxisAlignment.center,
        //                                   children: [
        //                                     Container(
        //                                       alignment: Alignment.center,
        //                                       width: double.infinity,
        //                                       padding: EdgeInsets.symmetric(
        //                                           vertical: 20),
        //                                       child: Text(
        //                                         'Ảnh đại diện',
        //                                         style:
        //                                             AppTextStyle.black(13),
        //                                       ),
        //                                     ),
        //                                     InkWell(
        //                                       onTap: () {
        //                                         Navigator.of(context).pop();
        //                                         cubit.choosePicture(
        //                                             ImageSource.camera);
        //                                       },
        //                                       child: Container(
        //                                         alignment: Alignment.center,
        //                                         padding:
        //                                             EdgeInsets.symmetric(
        //                                                 vertical: 20),
        //                                         width: double.infinity,
        //                                         decoration: BoxDecoration(
        //                                             border: Border.symmetric(
        //                                                 horizontal: BorderSide(
        //                                                     color: AppColors
        //                                                         .greyB5))),
        //                                         child: Text('Chụp ảnh',
        //                                             style:
        //                                                 AppTextStyle.blue(
        //                                                     16,
        //                                                     weight:
        //                                                         FontWeight
        //                                                             .w600)),
        //                                       ),
        //                                     ),
        //                                     InkWell(
        //                                       onTap: () {
        //                                         Navigator.of(context).pop();
        //                                         cubit.choosePicture(
        //                                             ImageSource.gallery);
        //                                       },
        //                                       child: Container(
        //                                         alignment: Alignment.center,
        //                                         padding:
        //                                             EdgeInsets.symmetric(
        //                                                 vertical: 20),
        //                                         width: double.infinity,
        //                                         child: Text(
        //                                           'Chọn ảnh có sẵn',
        //                                           style: AppTextStyle.blue(
        //                                               16,
        //                                               weight:
        //                                                   FontWeight.w600),
        //                                         ),
        //                                       ),
        //                                     ),
        //                                   ],
        //                                 ),
        //                               ),
        //                               AppButton(
        //                                 color: Colors.white,
        //                                 height: 54,
        //                                 title: 'Đóng',
        //                                 onPressed: () =>
        //                                     Navigator.of(context).pop(),
        //                                 textStyle: AppTextStyle.blue(16,
        //                                     weight: FontWeight.bold),
        //                               )
        //                             ],
        //                           ),
        //                         ),
        //             ));
        //             }
        //           },
        //           child: CircleAvatar(
        //             child: state.changeAvatarStatus ==
        //                     ChangeAvatarStatus.loading
        //                 ? AppLoading()
        //                 : AppCacheImage(
        //                     url: imageUrl,
        //                     borderRadius: 100,
        //                   ),
        //           ),
        //         ),
        //         SizedBox(width: 10),
        //         Expanded(
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Row(
        //                 children: [
        //                   Expanded(
        //                     child: Text(
        //                       '${fullName}',
        //                       style: AppTextStyle.black(14,
        //                           weight: FontWeight.bold),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ],
        //           ),
        //         ),
        //       ],
        //     );
        //   },
        // ),
        // ),
      ],
    );
  }
}
