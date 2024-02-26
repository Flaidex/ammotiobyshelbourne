import 'package:ammotiobyshelbourne/app/modules/home/controllers/home_controller.dart';
import 'package:ammotiobyshelbourne/app/utils/app_constants.dart';
import 'package:ammotiobyshelbourne/app/utils/assets.dart';
import 'package:ammotiobyshelbourne/app/utils/common/custom_clipper/screen_header_clipper.dart';
import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:ammotiobyshelbourne/app/utils/dimensions.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: _itemList(context),
    );
  }

//Drawer item list
  ListView _itemList(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Container(
          height: MediaQuery.of(context).viewPadding.top,
          color: AppColors.grey,
        ),
        _drawerHeader(),
        _buildDrawerItem(
          Assets.images.home,
          Constants.headerList[0],
          () => Get.find<HomeController>().changePage(0),
        ),
        _buildDrawerItem(
          Assets.images.salesInvoice,
          Constants.headerList[1],
          () => Get.find<HomeController>().changePage(1),
        ),
        _buildDrawerItem(
          Assets.images.expensesIcon,
          Constants.headerList[2],
          () => Get.find<HomeController>().changePage(2),
        ),
        _buildDrawerItem(
          Assets.images.payslipsIcon,
          Constants.headerList[3],
          () => Get.find<HomeController>().changePage(3),
        ),
        _buildDrawerItem(
          Assets.images.workingHoursIcon,
          Constants.headerList[4],
          () => Get.find<HomeController>().changePage(4),
        ),
        _buildDrawerItem(
          Assets.images.bankStatementsIcon,
          Constants.headerList[5],
          () => Get.find<HomeController>().changePage(5),
        ),
        KDimension().kHeight20,
        _logoutBtn(context),
      ],
    );
  }

//Drawer header
  ClipPath _drawerHeader() {
    return ClipPath(
      clipper: ScreenHeaderClipper(),
      child: Container(
        height: 120,
        color: AppColors.primaryColor,
        child: Align(
          alignment: Alignment.topCenter,
          child: Image.asset(
            Assets.images.ammotio,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

//Build drawer item
  Widget _buildDrawerItem(
      String imageSrc, String titleText, Function()? onPressed) {
    return ListTile(
      leading: SizedBox(
        height: 20,
        width: 20,
        child: Image(
          image: AssetImage(
            imageSrc,
          ),
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        titleText,
        style: Get.textTheme.headlineSmall?.copyWith(
          color: AppColors.primaryColor,
        ),
      ),
      onTap: onPressed,
      selectedTileColor: Colors.black,
    );
  }

//----------logout button
  GestureDetector _logoutBtn(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.find<HomeController>().logout(),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        width: 150,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              StringConst.logout,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
