import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/app/app_config.dart';
import 'package:flutter_base/app/constant/constant_barrel.dart';

class AppDatePicker {
  final BuildContext context;
  final CupertinoDatePickerMode? pickerMode;
  final String title;
  final DateTime? initialDate;
  final DateTime? minimumDate;
  final DateTime? maximumDate;
  final Function(DateTime dateTime) onDateTimeSelected;

  void show() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return AppDatePickerWidget(
            title: title,
            initialDate: initialDate,
            minimumDate: minimumDate,
            maximumDate: maximumDate,
            pickerMode: pickerMode,
            onDateTimeSelected: onDateTimeSelected,
          );
        });
  }

  const AppDatePicker({
    required this.context,
    required this.onDateTimeSelected,
    required this.title,
    this.pickerMode,
    this.initialDate,
    this.minimumDate,
    this.maximumDate,
  });
}

class AppDatePickerWidget extends StatefulWidget {
  final CupertinoDatePickerMode? pickerMode;
  final String title;
  final DateTime? initialDate;
  final DateTime? minimumDate;
  final DateTime? maximumDate;
  final Function(DateTime dateTime) onDateTimeSelected;
  const AppDatePickerWidget({
    Key? key,
    this.pickerMode,
    required this.title,
    this.initialDate,
    this.minimumDate,
    this.maximumDate,
    required this.onDateTimeSelected,
  }) : super(key: key);

  @override
  State<AppDatePickerWidget> createState() => _AppDatePickerWidgetState();
}

class _AppDatePickerWidgetState extends State<AppDatePickerWidget> {
  late DateTime selectedDateTime;

  @override
  void initState() {
    selectedDateTime = widget.initialDate ?? AppConfig.birthMaxDate;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewPadding.bottom),
      height: 250,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Hủy',
                    style: AppTextStyle.black(16),
                  ),
                ),
                Text(
                  widget.title,
                  style: AppTextStyle.black(18, weight: FontWeight.w600),
                ),
                GestureDetector(
                  onTap: () {
                    widget.onDateTimeSelected(selectedDateTime);
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Chọn',
                    style: AppTextStyle.main(17, weight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: AppColors.greyED,
          ),
          Expanded(
            child: CupertinoDatePicker(
              use24hFormat: true,
              initialDateTime: widget.initialDate ?? AppConfig.birthMaxDate,
              minimumDate: widget.minimumDate ?? AppConfig.birthMinDate,
              maximumDate: widget.maximumDate ?? AppConfig.birthMaxDate,
              mode: widget.pickerMode ?? CupertinoDatePickerMode.date,
              onDateTimeChanged: (DateTime newTime) {
                setState(() {
                  selectedDateTime = newTime;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
