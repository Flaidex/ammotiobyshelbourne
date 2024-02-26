import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class YearDropdown extends StatelessWidget {
  const YearDropdown({
    super.key,
    required this.list,
    required this.selectedYear,
    required this.filterFn,
  });

  final List<String> list;
  final String selectedYear;
  final void Function(String?)? filterFn;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        dropdownColor: Colors.black,
        value: selectedYear.isEmpty ? null : selectedYear,
        hint: Text(
          StringConst.year,
          style: Get.textTheme.bodyLarge?.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: Get.textTheme.bodyLarge?.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
        ),
        icon: const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Icon(
            Icons.arrow_drop_down_circle,
            color: Colors.white,
          ),
        ),
        onChanged: filterFn,
        items: list.map((value) {
          return DropdownMenuItem(
            value: value,
            child: Text(
              value,
              textAlign: TextAlign.center,
            ),
          );
        }).toList(),
      ),
    );
  }
}
