import 'dart:math';

import 'package:ammotiobyshelbourne/app/modules/profile/model/profile_model.dart';
import 'package:ammotiobyshelbourne/app/utils/api_constants.dart';
import 'package:ammotiobyshelbourne/app/utils/common/widgets/common_widget.dart';
import 'package:ammotiobyshelbourne/app/utils/string_constants.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

//generate random string
String generateRandomString(int len) {
  var r = Random();
  const chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  return List.generate(len, (index) => chars[r.nextInt(chars.length)]).join();
}

//get session
Future<String> getSession() async {
  final prefs = await SharedPreferences.getInstance();
  String? session = prefs.getString('session');
  if (session == null) {
    session = generateRandomString(36);
    prefs.setString('session', session);
  }
  return session;
}

//Get currency symbol
Future<String> getCurrencySymbol() async {
  final String currency = await getCurrency();
  final currencyFormat = NumberFormat.simpleCurrency(name: currency);
  return currencyFormat.currencySymbol;
}

//get formatted date
String getFormattedDate(String dateString) {
  final DateTime? dateTime = DateTime.tryParse(dateString);
  return DateFormat(StringConst.dateFormat).format(
    dateTime ?? DateTime.now(),
  );
}

//get formatted date from date
String getFormattedDateFromDate(DateTime? dateTime) {
  return dateTime == null
      ? ""
      : DateFormat(StringConst.dateFormat).format(
          dateTime,
        );
}

//get token
Future<String> getToken() async {
  final prefs = await SharedPreferences.getInstance();
  String token = prefs.getString(StringConst.authToken) ?? "";

  return token;
}

//get currency
Future<String> getCurrency() async {
  final prefs = await SharedPreferences.getInstance();
  String currency = prefs.getString(StringConst.currency) ?? "";

  return currency;
}

//update profile text field helper
//Get marital status
bool isSingle(IdName maritalStatus) {
  return maritalStatus.id == 1;
}

bool isMarried(IdName maritalStatus) {
  return maritalStatus.id == 2;
}

bool isDivorced(IdName maritalStatus) {
  return maritalStatus.id != 1 &&
      maritalStatus.id != 2 &&
      maritalStatus.id != null;
}

//Open file on Browser
void openFileOnBrowser(String type, int? id) async {
  final token = await getToken();
  final session = await getSession();

  final url = Uri.parse(
      "${ApiConst.baseUrl}$type/get-file/$id?auth=$token&session=$session");
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    CommonWidget.callSnackBar(StringConst.somethingWentWrong, true);
  }
}

//Get month name
String getMonthName(int monthIndex) {
  final String monthName = DateFormat.MMMM().format(DateTime(2000, monthIndex));
  return monthName;
}
