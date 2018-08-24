import 'package:intl/intl.dart';

class Times {
  ///
  /// 数字月份转换为英文简写
  ///
  static String numberMonth2NamedMonth(String namedMonth) {
    if (namedMonth == '1' || namedMonth == '01') {
      return 'JAN';
    } else if (namedMonth == '2' || namedMonth == '02') {
      return 'FEB';
    } else if (namedMonth == '3' || namedMonth == '03') {
      return 'MAR';
    } else if (namedMonth == '4' || namedMonth == '04') {
      return 'APR';
    } else if (namedMonth == '5' || namedMonth == '05') {
      return 'MAY';
    } else if (namedMonth == '6' || namedMonth == '06') {
      return 'JUN';
    } else if (namedMonth == '7' || namedMonth == '07') {
      return 'JUL';
    } else if (namedMonth == '8' || namedMonth == '08') {
      return 'AUG';
    } else if (namedMonth == '9' || namedMonth == '09') {
      return 'SEP';
    } else if (namedMonth == '10') {
      return 'OCT';
    } else if (namedMonth == '11') {
      return 'NOV';
    } else if (namedMonth == '12') {
      return 'DEC';
    } else {
      return 'UNKOWN';
    }
  }

  static String timestamp2String(int timestamp,
      {String format = 'yyyy-MM-dd hh:mm:ss'}) {
    return DateFormat(format).format(
      DateTime.fromMillisecondsSinceEpoch(timestamp),
    );
  }

  /// 从时间推出现在是`早上`/`下午`/`晚上`
  static String time2period(DateTime time) {
    String format = 'HH';
    int hour = int.parse(DateFormat(format).format(time));
    if (hour > 6 && hour < 12) {
      return 'morning';
    } else if (hour >= 12 && hour < 18) {
      return 'afternoon';
    } else {
      return 'evening';
    }
  }

  /// 现在是`早上`/`下午`/`晚上`
  static String period() {
    String format = 'HH';
    int hour = int.parse(DateFormat(format).format(DateTime.now()));
    if (hour > 6 && hour < 12) {
      return 'morning';
    } else if (hour >= 12 && hour < 18) {
      return 'afternoon';
    } else {
      return 'evening';
    }
  }
}
