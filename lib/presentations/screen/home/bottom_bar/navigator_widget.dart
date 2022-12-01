import 'package:flutter/material.dart';
import 'package:flutter_base/app/constant/constant_barrel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationIconWidget extends StatelessWidget {
  final Widget icon;
  final String title;
  final VoidCallback onTap;
  final bool isSelected;
  const NavigationIconWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 40,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              icon,
              Text(
                title,
                style: isSelected
                    ? AppTextStyle.main(10, weight: FontWeight.w600)
                    : AppTextStyle.grey(10, weight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationPushBookWidget extends StatelessWidget {
  final VoidCallback onTap;
  NavigationPushBookWidget({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 48,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.main),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(bottom: 3),
                    child: FaIcon(
                      FontAwesomeIcons.bookMedical,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
