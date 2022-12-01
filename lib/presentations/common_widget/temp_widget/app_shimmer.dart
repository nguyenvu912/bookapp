import 'package:flutter/material.dart';
import 'package:flutter_base/app/constant/constant_barrel.dart';
import 'package:shimmer/shimmer.dart';

class AppShimmer extends StatelessWidget {
  final double height;
  final double width;
  final double? radius;
  const AppShimmer(
      {Key? key, required this.height, required this.width, this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Shimmer.fromColors(
          baseColor: AppColors.greyD8,
          highlightColor: AppColors.greyED,
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(radius ?? 5)),
          )),
    );
  }
}
