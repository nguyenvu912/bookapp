import 'package:flutter/material.dart';
import 'package:flutter_base/app/app_config.dart';

class MenuItemWidget extends StatelessWidget {
  final String title;
  final Widget icon;
  final VoidCallback onTap;

  const MenuItemWidget(
      {Key? key, required this.title, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 72,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: Color(0xFFEDF2F9),
          width: 1.0,
        ))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                icon,
                SizedBox(
                  width: 8,
                ),
                Text(title,
                    style: TextStyle(
                      fontFamily: AppConfig.fontFamily,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
