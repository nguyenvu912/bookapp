import 'package:flutter/material.dart';
import 'package:flutter_base/app/constant/constant_barrel.dart';
import 'package:flutter_base/presentations/screen/forum/widget/header_forum.dart';

class ForumPage extends StatefulWidget {
  const ForumPage({super.key});

  @override
  State<ForumPage> createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: HeaderForumWidget(
              fullName: 'Nguyen Huy Vu',
              imageUrl: AppImages.icLogoApp,
            ),
          )
        ],
      ),
    );
  }
}
