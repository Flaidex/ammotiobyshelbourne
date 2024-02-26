import 'package:ammotiobyshelbourne/app/utils/app_constants.dart';
import 'package:ammotiobyshelbourne/app/utils/common/custom_clipper/screen_header_clipper.dart';
import 'package:ammotiobyshelbourne/app/utils/common/functions/common_functions.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/loader.dart';
import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:ammotiobyshelbourne/app/utils/dimensions.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  ProfileView({Key? key}) : super(key: key);
  @override
  final ProfileController controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _topSection(),
          _body(),
        ],
      ),
      floatingActionButton: _floatingActionBtn(),
    );
  }

  //Top section
  ClipPath _topSection() {
    return ClipPath(
      clipper: ScreenHeaderClipper(),
      child: Container(
        height: 80,
        width: Get.width,
        color: AppColors.primaryColor,
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Obx(
              () => Text(
                controller.loading
                    ? "User name"
                    : "${controller.profileData.first_name ?? ""} ${controller.profileData.last_name ?? ""}",
                style: Get.textTheme.headlineMedium?.copyWith(
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

//Body section
  Widget _body() {
    return Expanded(
      child: Obx(() => controller.loading
          ? const Loader(
              size: 40,
              color: AppColors.grey,
            )
          : SingleChildScrollView(
              child: _bodyContent(),
            )),
    );
  }

//Body content
  Widget _bodyContent() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          KDimension().kHeight10,
          _userInfo(),
          KDimension().kHeight25,
          _addressSection(),
          KDimension().kHeight25,
          _spouseDetails(),
          KDimension().kHeight25,
          _companyDetails(),
          KDimension().kHeight25,
          _portalAccess(),
          KDimension().kHeight75,
        ],
      ),
    );
  }

//Portal Access Widget
  Container _portalAccess() {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          Constants.lightBoxShadow,
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _sectionHeader(StringConst.portalAccess),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                _buildRow(StringConst.userName,
                    controller.profileData.username ?? ""),
                KDimension().kHeight05,
                _changePassBtn(),
                KDimension().kHeight10,
              ],
            ),
          ),
        ],
      ),
    );
  }

//Change password button
  Widget _changePassBtn() {
    return GestureDetector(
      onTap: () => controller.showChangePassDialog(),
      child: Container(
        width: Get.width,
        alignment: Alignment.centerRight,
        child: Container(
          width: 180,
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                StringConst.changePassword,
                style: Get.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  //Floating action button
  Widget _floatingActionBtn() {
    return FloatingActionButton(
      backgroundColor: AppColors.primaryColor,
      onPressed: () => controller.showUpdateProfileDialog(),
      child: const Icon(
        Icons.edit,
        color: AppColors.white,
      ),
    );
  }

//Company details Widget
  Container _companyDetails() {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          Constants.lightBoxShadow,
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _sectionHeader(StringConst.companyDetails),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                _buildRow(StringConst.name,
                    controller.profileData.company?.name ?? ""),
                _buildRow(StringConst.croNumber,
                    controller.profileData.company?.cro_number ?? ""),
                _buildRow(StringConst.taxRegistration,
                    controller.profileData.company?.vat_number ?? ""),
                _buildRow(
                  StringConst.financialYearEnd,
                  getFormattedDateFromDate(
                      controller.profileData.company?.financial_year_end),
                ),
                _buildRow(
                  StringConst.dateOfInc,
                  getFormattedDateFromDate(
                      controller.profileData.company?.date_of_incorporation),
                ),
                _buildRow(
                  StringConst.address1,
                  controller.profileData.company?.address_1 ?? "",
                ),
                _buildRow(
                  StringConst.address2,
                  controller.profileData.company?.address_2 ?? "",
                ),
                _buildRow(
                  StringConst.address3,
                  controller.profileData.company?.address_3 ?? "",
                ),
                _buildRow(
                  StringConst.address4,
                  controller.profileData.company?.address_4 ?? "",
                ),
                _buildRow(
                  StringConst.country,
                  controller.profileData.company?.country?.name ?? "",
                ),
                KDimension().kHeight10,
              ],
            ),
          ),
        ],
      ),
    );
  }

//Spouse details Widget
  Container _spouseDetails() {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          Constants.lightBoxShadow,
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _sectionHeader(StringConst.spouseDetails),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                _buildRow(StringConst.firstName,
                    controller.profileData.spouse_first_name ?? ""),
                _buildRow(StringConst.lastName,
                    controller.profileData.spouse_last_name ?? ""),
                _buildRow(StringConst.maidenName,
                    controller.profileData.spouse_maiden_name ?? ""),
                _buildRow(StringConst.dateOfMarriage,
                    controller.profileData.date_of_marriage ?? ""),
                _buildRow(StringConst.dateOfSeparation,
                    controller.profileData.date_of_separation ?? ""),
                _buildRow(StringConst.ppsNumber,
                    controller.profileData.pps_number ?? ""),
                KDimension().kHeight10,
              ],
            ),
          ),
        ],
      ),
    );
  }

//Section Header
  Container _sectionHeader(String text) {
    return Container(
      height: 50,
      width: Get.width,
      decoration: BoxDecoration(
        color: AppColors.greyShade300,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: Get.textTheme.headlineSmall,
        ),
      ),
    );
  }

//Address section
  Container _addressSection() {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          Constants.lightBoxShadow,
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _sectionHeader(StringConst.address),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                _buildRow(StringConst.address1,
                    controller.profileData.address_1 ?? ""),
                _buildRow(StringConst.address2,
                    controller.profileData.address_2 ?? ""),
                _buildRow(StringConst.address3,
                    controller.profileData.address_3 ?? ""),
                _buildRow(StringConst.address4,
                    controller.profileData.address_4 ?? ""),
                KDimension().kHeight10,
              ],
            ),
          ),
        ],
      ),
    );
  }

//User info
  Container _userInfo() {
    return Container(
      height: 70,
      width: Get.width,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          Constants.lightBoxShadow,
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            controller.profileData.username ?? "",
            style: Get.textTheme.bodyMedium,
          ),
          Text(
            '${StringConst.phone} : ${controller.profileData.phone ?? ""}',
            style: Get.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  Widget _buildRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: Get.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              KDimension().kWidth10,
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    value,
                    style: Get.textTheme.bodyMedium,
                  ),
                ),
              ),
            ],
          ),
          KDimension().kHeight05,
          const Divider(
            height: 1,
            thickness: 1,
            color: AppColors.dividerGrey,
          ),
        ],
      ),
    );
  }
}
