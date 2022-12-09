import 'package:flutter/material.dart';
import 'package:flutter_base/presentations/common_widget/temp_widget/app_full_page_loading.dart';

class CommonWidgetLoading extends StatelessWidget {
  final Widget body;
  final bool isLoading;
  const CommonWidgetLoading(
      {super.key, required this.body, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [body, isLoading ? AppFullPageLoading() : SizedBox()],
    );
  }
}
