//-- Get Current Date
// ========================================================================
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyUtils {
  String _currentDate = '1 Jan 2021';
  String _currentTime = '01:30:45';
  String _curDateTime = '2021-06-07 01:30:45';

  String get currentDate => this._currentDate;
  String get currentTime => this._currentTime;
  String get curDateTime => this._curDateTime;

  String getCurrentTime() {
    var now = new DateTime.now();
    var timeFormatter = new DateFormat.Hms();
    String formattedTime = timeFormatter.format(now);

    return formattedTime;
  }

  String getCurrentDate() {
    var now = new DateTime.now();
    var formatter = new DateFormat('dd MMM yyyy');
    String formattedDate = formatter.format(now);

    return formattedDate;
  }

  String getCurrentDateTime({String? format}) {
    var now = new DateTime.now();
    String fmt = format ?? 'dd MMM yyyy HH:mm';
    String formattedDateTime = DateFormat(fmt).format(now);

    return formattedDateTime;
  }

  void getCurrentDateTimeMulti() {
    var now = new DateTime.now();
    String formattedDateTime = DateFormat('dd MMM yyyy HH:mm').format(now);
    var formatter = new DateFormat('dd MMM yyyy');
    var timeFormatter = new DateFormat.Hms();
    String formattedDate = formatter.format(now);
    String formattedTime = timeFormatter.format(now);

    this._currentDate = formattedDate;
    this._currentTime = formattedTime;
    print('Date and Time: $formattedDateTime');
    print('Date: $formattedDate');
    print('Time: $formattedTime');
  }

//-- Get EPOX/Unix TimeStamp from Datetime format
// ========================================================================
  double getUnixDate(DateTime myDate) {
    // return myDate.millisecondsSinceEpoch; //--If want to have LONG INT
    return myDate.millisecondsSinceEpoch / 1000; //--If want to have INT (11)
  }

// Converting EPOCH/Unix Timestamp Date to custom
// ========================================================================
  dynamic convertUnixDate(int myUnixDate, {String? dateFormat}) {
    //--Sample of dateFormat: 'dd-MM-yyyy hh:mm a' || 'dd-MM-yyyy' || 'dd MMM yyyy HH:mm'
    if (dateFormat != null) {
      final df = new DateFormat(dateFormat);
      String output =
          df.format(new DateTime.fromMillisecondsSinceEpoch(myUnixDate * 1000));
      return output;
    } else {
      //--Convert it DateTime format:
      DateTime output = DateTime.fromMillisecondsSinceEpoch(myUnixDate * 1000);
      return output;
    }
  }

// Converting mySql Date to custom
// ========================================================================
  String convertMySqlDate(DateTime mySqlDate, String dateFormat) {
    String formattedDateTime =
        // DateFormat('dd MMM yyyy HH:mm').format(mySqlDate);
        // DateFormat('dd MMM yyyy').format(mySqlDate);
        // DateFormat('yyyy-MM-dd').format(mySqlDate);
        DateFormat(dateFormat).format(mySqlDate);
    return formattedDateTime;
  }

// Converting Currency Format to IDR = Rupiah
// ========================================================================
  static String convertToIdr(dynamic number, int decimalDigit) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp ',
      decimalDigits: decimalDigit,
    );
    return currencyFormatter.format(number);
  }

// Converting Currency Format to IDR = Rupiah
// ========================================================================
  static dynamic getDigitOnly(dynamic value) {
    String onlyDigits = value.replaceAll(RegExp('[^0-9]'), "");
    // double doubleValue = double.parse(onlyDigits) / 100;
    return onlyDigits;
  }

  String convertMySqlTime(String strTime) {
    DateTime parseDt = DateTime.parse(strTime);
    String formattedDateTime =
        // DateFormat('dd MMM yyyy HH:mm').format(mySqlDate);
        DateFormat('HH:mm').format(parseDt);
    return formattedDateTime;
  }

  getCustomFormattedDateTime(String givenDateTime, String dateFormat) {
    // dateFormat = 'MM/dd/yy'; or 'dd-MMM-yy HH:mm';
    final DateTime docDateTime = DateTime.parse(givenDateTime);
    return DateFormat(dateFormat).format(docDateTime);
  }

  String getDateOnly(DateTime dateTime) {
    var output = DateFormat("dd").format(dateTime);
    return output;
  }

  String getMonthOnly(DateTime dateTime) {
    var output = DateFormat("MMM").format(dateTime);
    return output;
  }

// Build Loading Indicator
// ========================================================================
  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  //--Convert Mapping data ke Json format:
  dynamic convertJson(dynamic param) {
    const JsonEncoder encoder = JsonEncoder();
    final dynamic object = encoder.convert(param);
    return object;
  }
}
