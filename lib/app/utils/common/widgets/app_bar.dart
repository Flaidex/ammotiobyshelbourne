import 'package:ammotiobyshelbourne/app/modules/home/controllers/home_controller.dart';
import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.leading,
    this.loading,
  });
  final Widget title;
  final Widget? leading;
  final bool? loading;
  final List<Widget>? actions;
  @override
  Size get preferredSize => Size.fromHeight(
        AppBar().preferredSize.height,
      );
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: AppBar().preferredSize,
      child: AppBar(
        backgroundColor: AppColors.accentColor,
        leading: leading,
        centerTitle: true,
        title: title,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.person_rounded,
              size: 25,
              color: AppColors.white,
            ),
            onPressed: loading == true
                ? null
                : () => Get.find<HomeController>().changePage(6),
          ),
        ],
        iconTheme: const IconThemeData(
          color: AppColors.white,
        ),
      ),
    );
  }
}
