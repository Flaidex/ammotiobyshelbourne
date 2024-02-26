import 'package:ammotiobyshelbourne/app/utils/config/app_colors.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Constants {
  Constants._();

  //style constants
  static const BoxShadow boxShadow = BoxShadow(
    color: Color(0xFFB4B4B4),
    offset: Offset(0, 2),
    blurRadius: 5,
    spreadRadius: 0,
  );

  //style constants
  static const BoxShadow lightBoxShadow = BoxShadow(
    color: Color(0xFFF2F2F2),
    offset: Offset(0, 2),
    blurRadius: 4,
    spreadRadius: 3,
  );

  static const List<String> headerList = [
    "Overview",
    "Sales Invoices",
    "Expenses",
    "Payslips",
    "Working Hours",
    "Bank Statements",
    "Profile",
  ];

  //Expense filter items
  static const List<String> filterItemList = [
    "Business Expenses",
    "Travel Expenses",
    "Approved",
    "Paid",
    "Awaiting Approval",
    "Rejected",
    "Deleted",
  ];

  //Filtering type
  static const List<String> filteringTypeList = [
    StringConst.businessStatus,
    StringConst.travelStatus,
    StringConst.approvedStatus,
    StringConst.paidStatus,
    StringConst.submittedStatus, //------Awaiting approval type
    StringConst.rejectedStatus,
    StringConst.deletedStatus,
  ];
  static const List<String> addNewList = [
    StringConst.businessExpenses,
    StringConst.travelExpenses,
  ];
  static const Map<int, FlexColumnWidth> salesinvoiceTableHeaderRatio = {
    0: FlexColumnWidth(0.25),
    1: FlexColumnWidth(0.4),
    2: FlexColumnWidth(0.2),
    3: FlexColumnWidth(0.15),
  };
  static const Map<int, FlexColumnWidth> payslipsTableHeaderRatio = {
    0: FlexColumnWidth(0.2),
    1: FlexColumnWidth(0.4),
    2: FlexColumnWidth(0.25),
    3: FlexColumnWidth(0.15),
  };
  static const Map<int, FlexColumnWidth> bankStatementsTableHeaderRatio = {
    0: FlexColumnWidth(0.175),
    1: FlexColumnWidth(0.265),
    2: FlexColumnWidth(0.175),
    3: FlexColumnWidth(0.175),
    4: FlexColumnWidth(0.21),
  };
  static const Map<int, FlexColumnWidth> workingHoursTableHeaderRatio = {
    0: FlexColumnWidth(0.3),
    1: FlexColumnWidth(0.25),
    2: FlexColumnWidth(0.3),
    3: FlexColumnWidth(0.15),
  };

  static final TextFieldProps searchStyle = TextFieldProps(
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          color: AppColors.grey,
          width: 1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.grey,
          )),
    ),
  );
  static final DropDownDecoratorProps dropDownStyle = DropDownDecoratorProps(
    baseStyle: Get.textTheme.bodyLarge,
    dropdownSearchDecoration: InputDecoration(
      filled: true,
      fillColor: AppColors.white,
      hintText: StringConst.selectOne,
      hintStyle: Get.textTheme.bodyMedium?.copyWith(
        color: AppColors.grey,
      ),
      suffixIconColor: AppColors.black,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          color: AppColors.transparent,
          width: 1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            width: 1,
            color: AppColors.grey,
          )),
      // contentPadding: const EdgeInsets.only(top: 2, left: 15),
    ),
  );

  static const BoxConstraints constraintsH400 = BoxConstraints(
    maxHeight: 400,
  );
  static const BoxConstraints constraintsH300 = BoxConstraints(
    maxHeight: 300,
  );
  static const BoxConstraints constraintsH200 = BoxConstraints(
    maxHeight: 200,
  );
  static const BottomSheetProps bottomSheetProps = BottomSheetProps(
    elevation: 16,
    backgroundColor: Color(0xFFFDF3D6),
  );

  //List of Subsistence claim
  static List<SubsistenceClaim> subsistenceList = [
    SubsistenceClaim(id: "hours_5", name: "Less than 5 hours", typeID: 0),
    SubsistenceClaim(id: "hours_10", name: "Between 5 and 10 hours", typeID: 1),
    SubsistenceClaim(
        id: "overnight_2", name: "Between 10 and 24 hours", typeID: 2),
    SubsistenceClaim(id: "overnight", name: "Overnight Allowance", typeID: 3),
  ];

  //List of duration away
  static const List<String> durationAway = [
    '1 day',
    '2 days',
    '3 days',
    '4 days',
    '5 days',
    '6 days',
    '7 days',
    '8 days',
    '9 days',
    '10 days',
    '11 days',
    '12 days',
    '13 days',
    '14 days',
    '15 days',
    '16 days',
    '17 days',
    '18 days',
    '19 days',
    '20 days',
    '21 days',
    '22 days',
    '23 days'
  ];
}

class SubsistenceClaim {
  final String? id;
  final int? typeID;
  final String? name;

  SubsistenceClaim({
    this.id,
    this.name,
    this.typeID,
  });
}
