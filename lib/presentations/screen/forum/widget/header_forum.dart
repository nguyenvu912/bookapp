import 'package:flutter/material.dart';
import 'package:flutter_base/app/constant/constant_barrel.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_cache_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderForumWidget extends StatelessWidget {
  final String fullName;
  final String imageUrl;

  const HeaderForumWidget({
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
            padding:
                const EdgeInsets.only(top: 32, left: 12, right: 12, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width - 80,
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 12),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 0.1, color: AppColors.main),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Text(
                          "Bạn muốn chia sẻ quyển sách nào hôm nay?...",
                          style: AppTextStyle.grey(12, weight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 5.0, color: AppColors.greyED),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
