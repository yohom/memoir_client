///
/// 数字月份转换为英文简写
///
String numberMonth2NamedMonth(String namedMonth) {
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
